��    [      �     �      �     �     �     �  5     .   O  �   ~  �   	  J   �	  �    
  �   �
  �   �  >   �  L  �  �      {   �  �   n  x   U  $  �  ~   �  �   r  �     F  �  <   ,  =   i  P   �  h   �  X   a  �   �  �   G  <     �   S  �    w   �  �   s  &   �  L     N   i  K   �  F     3   K  6     �   �  �   i  ;   �  �   (  1   �  p   �  V   o   v   �      =!  �   O!  O   )"  {   y"  �   �"  �   �#  �   Q$  i    %  ~   j%  �   �%  ;   }&  8   �&  I   �&  T   <'  �   �'  L   (  q   g(  k   �(  N   E)  v   �)  q   *  N   }*  @   �*  �   +  �   �+  H   M,  [   �,  I   �,  X   <-     �-     �-  	   �-     �-     �-     �-     �-     �-     .  %   .     >.  B   Q.  E  �.     �/     �/     
0     "0     A0     `0  (   d0     �0  (   �0  :   �0      1     �1  ^   �1  @   �1  G   92  m   �2  .   �2     3  O   33  (   �3     �3  c   �3     "4  =   %4  !   c4     �4     �4     �4  �   �4  3   -5  o   a5     �5  t   �5  e   ^6  �   �6  w   Q7  h   �7  ;   28  J   n8  l   �8     &9  U   =9  #   �9  <   �9  �   �9  4   �:  C   �:      ;  :   3;     n;     �;     �;  c   �;  �   �;     �<     �<     �<  _   �<  �   %=  *   �=     �=  7   �=  5   1>  s   g>  5   �>  F   ?  >   X?  5   �?  D   �?  >   @  5   Q@  :   �@  ~   �@  U   AA  2   �A  5   �A  8    B  <   9B     vB     �B     �B     �B     �B     �B     �B     �B     �B     �B     C  7   !C     N      ?       4              ;   '   S              
          Y   A       X           Z                     .   M      8      I       W          ,   0   "                     2          Q      R   P   F          !      :   V              O   &   =         	   B   G   #                  [   6       <          T   %      7   J   +          D   L   E       1   3   /          -   9   @             K   C       U   >       *       H                         5   )      (   $    
        Global variable:  
        Local variable:  
        Python builtins:  
    Perhaps you meant to write one of the following: 
    Perhaps you meant to write the following:         To see the lines of code that cause the problem, 
        you must use the Friendly Console and not a 
        regular Python console.
 A FileNotFoundError exception indicates that you
are trying to open a file that cannot be found by Python.
This could be because you misspelled the name of the file.
 A KeyError is raised when a value is not found as a
key in a Python dict.
 A ModuleNotFoundError exception indicates that you
are trying to import a module that cannot be found by Python.
This could be because you misspelled the name of the module
or because it is not installed on your computer.
 A NameError exception indicates that a variable or
function name is not known to Python.
Most often, this is because there is a spelling mistake.
However, sometimes it is because the name is used
before being defined or given a value.
 A RecursionError is raised when a function calls itself,
directly or indirectly, too many times.
It almost always indicates that you made an error in your code
and that your program would never stop.
 A SyntaxError occurs when Python cannot understand your code.
 A TabError indicates that you have used both spaces
and tab characters to indent your code.
This is not allowed in Python.
Indenting your code means to have block of codes aligned vertically
by inserting either spaces or tab characters at the beginning of lines.
Python's recommendation is to always use spaces to indent your code.
 A TypeError is usually caused by trying
to combine two incompatible types of objects,
by calling a function with the wrong type of object,
or by tring to do an operation not allowed on a given type of object.
 A ValueError indicates that a function or an operation
received an argument of the right type, but an inappropriate value.
 A ZeroDivisionError occurs when you are attempting to divide
a value by zero:
    result = my_variable / 0
It can also happen if you calculate the remainder of a division
using the modulo operator '%'
    result = my_variable % 0
 An IndentationError occurs when a given line of code is
not indented (aligned vertically with other lines) as expected.
 An IndexError occurs when you are try to get an item from a list,
a tuple, or a similar object (sequence), by using an index which
does not exists; typically, this is because the index you give
is greater than the length of the sequence.
Reminder: the first item of a sequence is at index 0.
 An OverflowError is raised when the result of an arithmetic operation
is too large to be handled by the computer's processor.
 An attribute error occurs when the code contains something like
    object.x
and 'x' is not a method or attribute (variable) belonging to 'object'
 ArithmeticError is the base class for those built-in exceptions
that are raised for various arithmetic errors.
It is unusual that you are seeing this exception;
normally, a more specific exception should have been raised.
 Currently, I cannot guess the likely cause of this error.
Try to examine closely the line indicated as well as the line
immediately above to see if you can identify some misspelled
word, or missing symbols, like (, ), [, ], :, etc.

You might want to report this case to
https://github.com/aroberge/friendly-traceback/issues

 Exception raised on line {linenumber} of file '{filename}'.
 Execution stopped on line {linenumber} of file '{filename}'.
 Friendly-traceback: Internal Problem
Source: {fn_name}
Please report this case.
 I do not recognize this case. Please report it to
https://github.com/aroberge/friendly-traceback/issues
 I make an effort below to guess what caused the problem
but I might guess incorrectly.

 I suspect that you are using a regular
Python console after importing Friendly-traceback.
Unfortunately, no further processing can be done.
 I suspect that you had an object of this type, {obj},
followed by what looked like a tuple, '(...)',
which Python took as an indication of a function call.
Perhaps you had a missing comma before the tuple.
 In Python 3, exceptions must be derived from BaseException.
 In Python, some objects are known as immutable:
once defined, their value cannot be changed.
You tried change part of such an immutable object: {obj},
most likely by using an indexing operation.
 In Python, variables that are used inside a function are known as 
local variables. Before they are used, they must be assigned a value.
A variable that is used before it is assigned a value is assumed to
be defined outside that function; it is known as a 'global'
(or sometimes 'nonlocal') variable. You cannot assign a value to such
a global variable inside a function without first indicating to
Python that this is a global variable, otherwise you will see
an UnboundLocalError.
 In older version of Python, 'print' was a keyword.
Now, 'print' is a function; you need to use parentheses to call it.
 In this case, the line identified above
is more indented than expected and 
does not match the indentation of the previous line.
 In this case, the sequence is a list.
 In your program, the name of the
file that cannot be found is '{filename}'.
 In your program, the name of the
module that cannot be found is '{mod_name}'.
 In your program, the name of the key
that cannot be found is '{key_name}'.
 In your program, the object is '{obj}' and the attribute is '{attr}'.
 In your program, the unknown name is '{var_name}'.
 Likely cause based on the information given by Python: LookupError is the base class for the exceptions that are raised
when a key or index used on a mapping or sequence is invalid.
It can also be raised directly by codecs.lookup().
 No information is known about this exception.
Please report this example to
https://github.com/aroberge/friendly-traceback/issues
 Perhaps you meant to write '{correct}' instead of '{typo}'
 Perhaps you need to type print({message})?

In older version of Python, 'print' was a keyword.
Now, 'print' is a function; you need to use parentheses to call it.
 Problem: source of '{filename}' is not available
 Python could not understand the code in the file
'{filename}'
beyond the location indicated below by --> and ^.
 Python could not understand the code the file
'{filename}'
for an unspecified reason.
 Python could not understand the code the file
'{filename}'.
It reached the end of the file and expected more content.
 Python exception: Python gave us the following informative message
about the possible cause of the error:

    {message}

However, I do not recognize this information and I have
to guess what caused the problem, but I might be wrong.

 Python's error message (invalid syntax) cannot be used to identify the problem: The object that could not be imported is '{name}'.
The module or package where it was 
expected to be found is '{module}'.
 The variable that appears to cause the problem is '{var_name}'.
Perhaps the statement
    global {var_name}
should have been included as the first line inside your function.
 This exception indicates that a certain object could not
be imported from a module or package. Most often, this is
because the name of the object is not spelled correctly.
 Unfortunately, no additional information is available:
the content of file '<stdin>' is not accessible.
Are you using a regular Python console instead of a Friendly-console?
 Unfortunately, no additional information is available:
the content of file '<string>' is not accessible.
 You apparently have called the function '{fn_name}' with
fewer positional arguments than it requires ({nb_required} missing).
 You apparently have called the function '{fn_name}' with
{nb_given} positional argument while it requires {nb_required}
such positional arguments.
 You cannot use the Python keyword {word} as an attribute.

 You cannot use the constant __debug__ as an attribute.

 You tried to add two incompatible types of objects:
{first} and {second}
 You tried to concatenate (add) two different types of objects:
{first} and {second}
 You tried to define {class_or_function} and did not use the correct syntax.
The correct syntax is:
    def name ( optional_arguments ):
 You tried to divide two incompatible types of objects:
{first} and {second}
 You tried to do an order comparison ({operator})
between two incompatible types of objects:
{first} and {second}
 You tried to exponentiate (raise to a power)
using two incompatible types of objects:
{first} and {second}
 You tried to multiply two incompatible types of objects:
{first} and {second}
 You tried to perform the bit shifting operation {operator}
on two incompatible types of objects:
{first} and {second}
 You tried to perform the bitwise operation {operator}
on two incompatible types of objects:
{first} and {second}
 You tried to subtract two incompatible types of objects:
{first} and {second}
 You tried to use the Python keyword '{kwd}' as a function name.
 You tried to use the operator {operator}
using two incompatible types of objects:
{first} and {second}.
This operator is normally used only
for multiplication of matrices.
 You tried to use the unary operator '{operator}'
with the following type of object: {obj}.
This operation is not defined for this type of object.
 You wanted to define {class_}
but forgot to add a colon ':' at the end

 You were trying to assign a value to the Python keyword '{keyword}'.
This is not allowed.

 You wrote a '{for_while}' loop but
forgot to add a colon ':' at the end

 You wrote a statement beginning with
'{name}' but forgot to add a colon ':' at the end

 a `list` a `set` a `tuple` a class a complex number a dictionary (`dict`) a function or method a number (`float`) a string (`str`) a variable equal to None (`NoneType`) an integer (`int`) {keyword} is a constant in Python; you cannot assign it a value.

 Project-Id-Version: friendly-traceback
PO-Revision-Date: 2020-08-08 21:29+0800
Language-Team: Wen-Hung, Chang
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Generated-By: pygettext.py 1.5
X-Generator: Poedit 2.4
Last-Translator: 
Plural-Forms: nplurals=1; plural=0;
Language: zh_TW
 
        全域變數:  
        區域變數:  
        Python內建:  
    也許你想要寫的是: 
    也許你想要寫的是:   
     錯誤, 找不到要開啟的檔案
     鍵錯誤
     錯誤, 找不到要匯入的模組
     名稱錯誤, 未定義的變數或功能函式名稱
     遞迴錯誤是函式直接或間接呼叫本身太多次
    大部份是因所寫的程式有誤，讓遞迴停不下來
     程式語法錯誤 
     Tab錯誤是混合空白鍵及Tab來做縮排
    這會讓Python難以正確識別區塊
     類型錯誤(運算或功能函式呼叫類型不一致等)
     值錯誤是指運算符號或功能函式接收到的值不正確
     除以零錯誤
    當想要做除法或取餘數運算時
    除數為0，在數學中是無意義的
     縮排錯誤(同區塊程式沒有對齊)
     索引值錯誤
     溢位錯誤是因為運算的結果數值太大
    電腦已無法處理
     屬性或物件方法(method)錯誤
     運算錯誤
 仔細檢查 看看，是否有拼錯的字，
還是多了或少了什麼(如( ) [ ] : 等符號)
  
 Execution stopped on line {linenumber} of file '{filename}'.
 Friendly-traceback: 內部問題
  
  
  
 想要呼叫的物件並沒有定義可被呼叫。
或是原本是要使用tuple, 但在小括號之前
忘了加逗號(tuple與呼叫都是使用小叫號)
 在Python3, 例外必須要繼承自BaseException.
 想要更改不可變物件{obj}的值
Python物件有些是不可變的(定義後，物件內容就不能改)
     區域變數錯誤
 在舊版的Python2, 'print' 是關鍵字
但現在, 'print' 是功能函式
使用時要加上小括號(圓括號)
 有問題的程式行縮排過多或不足
導致與前後行的縮排不同，請檢查縮排空格
 想要從清單, tuple等取出項目,但索引值不存在
通常的錯誤是索引值超過項目數量
要小心, 索引值是從0開始
 想要開啟的檔案'{filename}'無法找到
檢查看看是不是檔名或路徑打錯, 
或是該檔案已不存在
 想要匯入 '{mod_name}' 模組
但是模組名稱打錯
也可能是模組未安裝於目前的Python
 在字典物件中用來查詢的鍵 '{key_name}'不存在
 在你的程式中, 物件'{obj}'並沒有屬性或物件方法'{attr}' .
 想要使用的變數或功能函式名稱打錯字或未定義
也可能是還沒有匯入相關的模組

 錯誤可能是因為:     查詢錯誤是因為在對物件做查詢時
    所用的鍵或是索引錯誤
    沒有此例外的相關資訊 
 想要輸入的是 '{correct}', 但是打錯成了 '{typo}'
 也許你想要的程式碼是print({message})

在舊版的Python2, 'print' 是關鍵字
但現在, 'print' 是功能函式
使用時要加上小括號(圓括號)
 問題：檔案'{filename}'的原始碼無法取得
 錯誤檔案:
    '{filename}'

以下是發生問題的程式行.
 錯誤檔案:
    '{filename}'

 錯誤檔案:
    '{filename}'

已經到了檔案結尾.
 發生例外狀況:  
   想要從模組'{module}'匯入 '{name}'
但是無法匯入
仔細檢查一下, 有沒有打錯字
 要使用區域變數 '{var_name}', 但忘了先設值
也有可能是你想要存取全域變數(在最上層的區塊)
但忘了在功能函式開題先加上global  '{var_name}'
     匯入模組發生錯誤
  
  
 想要呼叫功能函式'{fn_name}'的引數數量不足
還少了{nb_required}個位置引數
 想要呼叫功能函式的引數數量不合
你呼叫功能函式{fn_name} 給了{nb_given} 位置引數
但它需要 {nb_required}個
 屬性不能使用Python關鍵字 {word} 
 屬性不能使用__debug__  
 想要相加的物件不相容
如{first} 和 {second}
 想要串接的物件不相容:
{first} and {second}
 你定義的{class_or_function}沒有使用正確語法
例如 def  函數名(參數名):
例如 class 類別名:

 想要相除的物件不相容:
{first} and {second}
 想要比較的運算({operator})物件不相容
{first} and {second}
 想要做次方運算的物件不相容:
{first} and {second}
 想要相乘的物件不相容:
{first} and {second}
 想要做位元位移運算的物件不相容:
{first} and {second}
 想要做位元運算的物件不相容:
{first} and {second}
 想要相減的物件不相容:
{first} and {second}
 Python的關鍵字 '{kwd}' 不能當作功能函式名稱
 想要使用的運算 {operator}在不相容的物件上
{first} and {second}.
這個運算符號通常是用在矩陣乘法

 想要對{obj}物件做的一元運算 '{operator}'.
但物件並未定義此運算.
 定義{class_}的那一行最後忘了加上 ':' 
 你想要對Python關鍵字設值
這是不允許的
  '{for_while}'迴圈那一行的最後忘了加上 ':' 
 行開頭是'{name}'的那一行, 忘了在最後加上 ':'
 清單 `list` 集合 `set`  `tuple` 類別 複數 字典 (`dict`) 功能函數或物件方法 數字 (`float`) 字串 (`str`) 是None的變數 (`NoneType`) 整數 (`int`) {keyword} 是Python本身定義的常數, 不能設值
 