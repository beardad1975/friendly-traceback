"""
main.py
---------------

Sets up the various options when Friendly-traceback is invoked from the
command line. You can find more details by doing::

    python -m friendly_traceback -h

"""
import argparse
from importlib import import_module
import platform
import runpy
import sys

from . import console
from . import public_api

versions = "Friendly-traceback version {}. [Python version: {}]\n".format(
    public_api.__version__, platform.python_version()
)

parser = argparse.ArgumentParser(
    formatter_class=argparse.RawDescriptionHelpFormatter,
    description=(
        """Friendly-traceback makes Python tracebacks easier to understand.

    {versions}

    If no command line arguments other than -m are specified,
    Friendly-traceback will start an interactive console.

    Note: the values of the verbosity level described below are:
        0: Normal Python tracebacks
        1: Default - does not need to be specified.
           The output does NOT include the standard Python traceback.
        2: Python tracebacks appear before the friendly display
        3: Python tracebacks appended at the end of the friendly display.
        4: Python traceback followed by basic explanation
        5: Only basic explanation
        6: No generic explanation
        7: Python tracebacks appear before the friendly display but
           no generic explanation is included.
        9: Python traceback only

    The Python traceback for level > 1 is the simulated version, which
    excludes calls from friendly-traceback itself.
    You can use negative values to show the true Python traceback which
    will likely include function calls from friendly-traceback itself.
    Thus level -9 is equivalent to level 0.

    Other values may be available, as we try to find the most useful
    settings for beginners.
        """.format(
            versions=versions
        )
    ),
)
parser.add_argument(
    "source",
    nargs="?",
    help="""Name of the script to be run as though it was the main module
    run by Python, so that __name__ does equal '__main__'.
    """,
)

parser.add_argument(
    "args",
    nargs="*",
    help="""Arguments to give to the script specified by source.
         """,
)

parser.add_argument(
    "--color", "--colour", help="""Not implemented yet.""", action="store_true"
)

parser.add_argument(
    "--lang",
    default="en",
    help="""This sets the language used by Friendly-tracebacks.
            Usually this is a two-letter code such as 'fr' for French.
         """,
)

parser.add_argument(
    "--verbosity",
    "--level",
    type=int,
    default=1,
    help="""This sets the "verbosity" level, that is the amount of information
            provided.
         """,
)

parser.add_argument(
    "--import_only",
    help="""Imports the module instead of running it as a script.
         """,
    action="store_true",
)


parser.add_argument(
    "--version",
    help="""Displays the current version.
         """,
    action="store_true",
)

parser.add_argument(
    "--dev",
    help="""Adds some extra functions in the console, useful for development.
         """,
    action="store_true",
)

parser.add_argument(
    "--formatter",
    help="""Specify a formatter function, as a dotted path.
Example: --formatter friendly_traceback.formatters.markdown
""",
)


def import_function(dotted_path: str) -> type:
    """Import a function from a module, given its dotted path.
    """
    try:
        module_path, function_name = dotted_path.rsplit(".", 1)
    except ValueError as err:
        raise ImportError("%s doesn't look like a module path" % dotted_path) from err

    module = import_module(module_path)

    try:
        return getattr(module, function_name)
    except AttributeError as err:
        raise ImportError(
            'Module "%s" does not define a "%s" function' % (module_path, function_name)
        ) from err


def main():
    console_defaults = {
        "get_lang": public_api.get_lang,
        "set_lang": public_api.set_lang,
        "get_verbosity": public_api.get_verbosity,
        "set_verbosity": public_api.set_verbosity,
        "show_again": public_api.show_again,
    }
    args = parser.parse_args()
    if args.dev:
        console_defaults["tokenize"] = public_api.make_token_table
    if args.version:
        print(f"Friendly-traceback version {public_api.__version__}")
        sys.exit()

    if args.color:
        print("Color support has not yet been added.")

    public_api.install(lang=args.lang, level=args.verbosity)

    if args.formatter:
        public_api.set_formatter(import_function(args.formatter))

    if args.source is not None:
        public_api.exclude_file_from_traceback(runpy.__file__)
        if sys.flags.interactive:
            if args.import_only:
                module = __import__(args.source)
                module_dict = {}
                for var in dir(module):
                    module_dict[var] = getattr(module, var)
            else:
                module_dict = runpy.run_module(args.source, run_name="__main__")
            console_defaults.update(module_dict)
            console.start_console(local_vars=console_defaults)
        elif args.import_only:
            module = __import__(args.source)
        else:
            sys.argv = ["", *args.args]
            runpy.run_path(args.source, run_name="__main__")
    else:
        console.start_console(local_vars=console_defaults)


main()
