��    =        S   �      8     9     T     n  5   �  .   �  �   �  �   ~  �   %  >     �   P  x   "	  �   �	  �   /
  F    <   U  =   �  P   �  h   !  X   �  �   �  �   p  <   ?  �   |  �   @  L   �  F     3   V  6   �  �   �  1   D  p   v  V   �  v   >     �  �   �  O   �  �   �  i   �  ~   
  �   �  I     T   g  L   �  q   	  k   {  N   �  v   6  q   �  N     �   n  �        �     �  	   �     �     �     �       %        :  E  M     �     �     �     �     �       (     :   F     �  @   �  .   �  (   
     3  c   E     �  =   �  !   �                    �      3   �   o   �   e   X!  w   �!  J   6"  l   �"     �"  #   #  4   )#  C   ^#      �#  :   �#     �#     $     $     $     $  _   $  �   }$  7   %  5   ?%  5   u%  F   �%  >   �%  5   1&  D   g&  >   �&  5   �&  ~   !'  U   �'     �'     (     (     (     !(     1(     B(     Q(     o(         +              (      1   	   %           -   "                 *       <          .             0   6   3   '          =   !   
                     )   2   8   ;                &   #   9   :          /                                       5         7              $       ,             4       
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
 A NameError exception indicates that a variable or
function name is not known to Python.
Most often, this is because there is a spelling mistake.
However, sometimes it is because the name is used
before being defined or given a value.
 A SyntaxError occurs when Python cannot understand your code.
 A TypeError is usually caused by trying
to combine two incompatible types of objects,
by calling a function with the wrong type of object,
or by tring to do an operation not allowed on a given type of object.
 An IndentationError occurs when a given line of code is
not indented (aligned vertically with other lines) as expected.
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
 In this case, the line identified above
is more indented than expected and 
does not match the indentation of the previous line.
 In your program, the name of the
file that cannot be found is '{filename}'.
 In your program, the object is '{obj}' and the attribute is '{attr}'.
 In your program, the unknown name is '{var_name}'.
 Likely cause based on the information given by Python: No information is known about this exception.
Please report this example to
https://github.com/aroberge/friendly-traceback/issues
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

 Python's error message (invalid syntax) cannot be used to identify the problem: Unfortunately, no additional information is available:
the content of file '<stdin>' is not accessible.
Are you using a regular Python console instead of a Friendly-console?
 Unfortunately, no additional information is available:
the content of file '<string>' is not accessible.
 You apparently have called the function '{fn_name}' with
fewer positional arguments than it requires ({nb_required} missing).
 You apparently have called the function '{fn_name}' with
{nb_given} positional argument while it requires {nb_required}
such positional arguments.
 You tried to add two incompatible types of objects:
{first} and {second}
 You tried to concatenate (add) two different types of objects:
{first} and {second}
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
 You tried to use the operator {operator}
using two incompatible types of objects:
{first} and {second}.
This operator is normally used only
for multiplication of matrices.
 You tried to use the unary operator '{operator}'
with the following type of object: {obj}.
This operation is not defined for this type of object.
 a `list` a `set` a `tuple` a complex number a dictionary (`dict`) a number (`float`) a string (`str`) a variable equal to None (`NoneType`) an integer (`int`) Project-Id-Version: friendly-traceback
PO-Revision-Date: 2020-08-06 16:24+0800
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
     名稱錯誤, 未定義的變數或功能函式名稱
     程式語法錯誤 
     類型錯誤(運算或功能函式呼叫類型不一致等)
     縮排錯誤(同區塊程式沒有對齊)
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
 有問題的程式行縮排過多或不足
導致與前後行的縮排不同，請檢查縮排空格
 想要開啟的檔案'{filename}'無法找到
檢查看看是不是檔名或路徑打錯, 
或是該檔案已不存在
 在你的程式中, 物件'{obj}'並沒有屬性或物件方法'{attr}' .
 想要使用的變數或功能函式名稱打錯字或未定義
也可能是還沒有匯入相關的模組

 錯誤可能是因為:    沒有此例外的相關資訊 
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
    
  
 想要呼叫功能函式'{fn_name}'的引數數量不足
還少了{nb_required}個位置引數
 想要呼叫功能函式的引數數量不合
你呼叫功能函式{fn_name} 給了{nb_given} 位置引數
但它需要 {nb_required}個
 想要相加的物件不相容
如{first} 和 {second}
 想要串接的物件不相容:
{first} and {second}
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
 想要使用的運算 {operator}在不相容的物件上
{first} and {second}.
這個運算符號通常是用在矩陣乘法

 想要對{obj}物件做的一元運算 '{operator}'.
但物件並未定義此運算.
 清單 `list` 集合 `set`  `tuple` 複數 字典 (`dict`) 數字 (`float`) 字串 (`str`) 是None的變數 (`NoneType`) 整數 (`int`) 