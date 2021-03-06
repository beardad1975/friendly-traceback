"""info_variables.py

Used to provide basic variable information in a way that
can be useful for beginners without overwhelming them.
"""
import builtins
import tokenize

from . import utils
from .my_gettext import current_lang


def get_var_info(line, frame):
    """Given a line of code and a frame object, it obtains the
       value (repr) of the names found in either the local or global scope.
    """
    tokens = utils.tokenize_source(line)
    loc = frame.f_locals
    glob = frame.f_globals
    names_info = []
    names = []
    for tok in tokens:
        if tok.type == tokenize.NAME:
            name = tok.string
            if name in names:
                continue
            names.append(name)
            result = ""
            if name in loc:
                result = format_var_info(tok, loc)
            elif name in glob:
                result = format_var_info(tok, glob, _global=True)
            if result:
                names_info.append(result)

    if names_info:
        names_info.append("")
    return "\n".join(names_info)


def format_var_info(tok, _dict, _global=""):
    """Formats the variable information so that it fits on a single line
       for each variable.

       The format we want is something like the following:

       [global] name: repr(name)

       However, if repr(name) exceeds a certain value, it is truncated.
       When that is the case, if len(name) is defined, as is the case for
       lists, tuples, dicts, etc., then len(name) is shown on a separate line.
       This can be useful information in case of IndexError and possibly
       others.
    """
    MAX_LENGTH = 50
    length_info = ""
    if _global:
        _global = "global "
    name = tok.string
    obj = _dict[name]
    try:
        value = repr(obj)
    except Exception:
        return ""

    # Remove irrelevant memory location information from functions, etc.
    # There are two reasons to do this:
    # 1. this information is essentially of no value for beginners
    # 2. Removing this information ensures that consecutive runs of
    #    script to create tracebacks for the documentation will yield
    #    exactly the same results. This makes it easier to spot changes/regressions.
    if value.startswith("<") and value.endswith(">") and " at " in value:
        value = value.split(" at ")[0] + ">"

    if len(value) > MAX_LENGTH:  # too much text would be shown
        # We reduce the length of the repr, indicate this by ..., but we
        # also keep the last character so that the repr of a list still
        # ends with ], that of a tuple still ends with ), etc.
        value = value[0 : MAX_LENGTH - 5] + "..." + value[-1]
        try:
            length_info = len(obj)
        except TypeError:
            pass

    result = f"    {_global}{name}: {value}"
    if length_info:
        result += f"  | len({name}): {length_info}"
    return result


def get_similar_var_names(name, frame):
    """This function looks for object with names similar to 'name' in
       either the current locals() and globals() as well as in
       Python's builtins.
    """
    _ = current_lang.translate

    similar = {}
    similar["locals"] = utils.edit_distance(name, frame.f_locals)
    _globals = utils.edit_distance(name, frame.f_globals)
    similar["globals"] = [var for var in _globals if var not in similar["locals"]]
    similar["builtins"] = utils.edit_distance(name, dir(builtins))

    nb_similar_names = (
        len(similar["locals"]) + len(similar["globals"]) + len(similar["builtins"])
    )
    if nb_similar_names == 0:
        return ""
    elif nb_similar_names == 1:
        message = _("\n    Perhaps you meant to write the following:")
        if similar["locals"]:
            message += _("\n        Local variable: ") + similar["locals"][0]
        elif similar["globals"]:
            message += _("\n        Global variable: ") + similar["globals"][0]
        else:
            message += _("\n        Python builtins: ") + similar["builtins"][0]
    else:
        message = _("\n    Perhaps you meant to write one of the following:")
        if similar["locals"]:
            message += _("\n        Local variable: ") + str(similar["locals"])[1:-1]
        if similar["globals"]:
            message += _("\n        Global variable: ") + str(similar["globals"])[1:-1]
        if similar["builtins"]:
            message += _("\n        Python builtins: ") + str(similar["builtins"])[1:-1]
    return message


def name_has_type_hint(name, frame):
    """Identifies if a variable name has a type hint associated with it.

        This can be useful if a user write something like::

            name : something
            use(name)

        instead of::

            name = something
            use(name)

        and sees a NameError.
    """

    _ = current_lang.translate

    loc = frame.f_locals
    glob = frame.f_globals

    if "__annotations__" in loc:
        if name in loc["__annotations__"]:
            message = _(
                "\n    Type hint found for '{name}' as a local variable.\n"
            ).format(name=name)
            message += _(
                "    Perhaps you wrote {name} : {hint} instead of {name} = {hint}.\n\n"
            ).format(name=name, hint=loc["__annotations__"][name])
            return message

    elif "__annotations__" in glob:
        if name in glob["__annotations__"]:
            message = _(
                "\n    Type hint found for '{name}' as a global variable.\n"
            ).format(name=name)
            message += _(
                "    Perhaps you wrote {name} : {hint} instead of {name} = {hint}.\n\n"
            ).format(name=name, hint=glob["__annotations__"][name])
            return message
