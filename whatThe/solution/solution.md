# whatThe

**Author**: Mayhul

Mr.Python had a very bad dream, so he told his father mr.see about it. He said he was dreaming in a dream and was very frustating to his brain.He send this file to him so that he could also experience. After seeing mr.see just said whatThe.
  
Given to user:
whatThe.py.gz

**Note**: 

1. Unzip the whatThe.py.gz file using `gunzip whaThe.py.gz` you will get `whatThe.py`

2. If you run this py file using `python3 whatThe.py` it will give the following error

```
root@buri:/home/buri/coding/GDSC_CTF/whatThe/solution# python3 whatThe.py 
Traceback (most recent call last):
  File "/home/buri/coding/GDSC_CTF/whatThe/solution/whatThe.py", line 2, in <module>
    whySoEagerToSolve
NameError: name 'whySoEagerToSolve' is not defined
```

3. To make the py file run you have to remove `whySoEagerToSolve` in the file as this message creates sytax error.


4. You will realize that the output you get is similar to the content of the previous py file with the sentence `whySoEagerToSolve`, which you have to remove again.
   so to automate this process one can make a bash script.

```bash
#!/bin/bash

if [ "$1" == "" ] 
then
	echo "usage: $0 <fileName>"
	exit -1
else
	file=$1
	it=0
	
	while [ true ];
	do
		cat $file | grep  --text "whySoEagerToSolve" > /dev/null
		if [ $? -eq 0 ]
		then
			newfile=${it}_$file
			echo "the desired text is present....now removing it"
			cp $file tmp.py
			sed  's/whySoEagerToSolve//g' $file > tmp.py
			python3 tmp.py > $newfile
			echo "cleaned the layer....$newfile "
			let it=$it+1
			file=${newfile}
		else
			echo "job is complete or something went wrong lol"
			break
		fi
	done
fi
```

5. As output you will get the following files. The last one is the file with no `whySoEagerToSolve`

```
root@buri:/home/buri/coding/GDSC_CTF/whatThe/solution# ./solution.sh whatThe.py 
the desired text is present...now removing it
cleaned the layer....0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....9_8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....10_9_8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....11_10_9_8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....12_11_10_9_8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....13_12_11_10_9_8_7_6_5_4_3_2_1_0_whatThe.py 
the desired text is present...now removing it
cleaned the layer....14_13_12_11_10_9_8_7_6_5_4_3_2_1_0_whatThe.py 
job is complete
```

Final python file will be like given the solution directory

6. The part of the file which has this `eval(''+eval('str(str)[+all([])]')+eval('str(str'+eval('s` is actually psfuck(inspired by jsfuck) link for the same is [psfuck](https://github.com/wanqizhu/pyfuck) just print it out and it will give result.

```python
print("<here the whole blob of code will come>")
```

7. The blob of bytes can be decrypted using the following code

```python

enc = [11111, 10001011, 1000, 0, 1011100, 10011010, 10111100, 1100010, 10, 11111111, 10101101, 1010011, 11000001, 10001110, 11010011, 110000, 10100, 10111100, 11100111, 101011, 1000110, 1000101, 1010100, 11001001, 10000110, 11010010, 1010010, 10100000, 10101000, 1001001, 1010011, 1001, 1110001, 11100010, 10, 11111, 10000000, 1010000, 11100101, 1110101, 1011110, 110110, 10000110, 11000100, 10001110, 1101100, 1000111, 10110000, 10101100, 11110110, 11011111, 1111001, 110110, 1011001, 11010, 10100000, 1001000, 11100, 10010000, 1110010, 10001000, 11100111, 11001101, 11011, 11001111, 10110011, 11000111, 11001001, 100011, 10100101, 1100101, 110111, 11010110, 10000100, 10000011, 110010, 11001110, 1011011, 10010, 11111101, 110001, 11001, 10011101, 11010010, 110111, 11010000, 10100010, 100111, 110111, 1000, 1001001, 1000101, 11100001, 1111100, 1011101, 1000010, 1110110, 11000010, 111001, 11001000, 1010110, 11011000, 11010111, 11010110, 10001010, 1011011, 11011100, 1100001, 11000, 10101111, 111011, 100101, 10001011, 10001000, 1011101, 1000001, 110010, 1011100, 1000010, 1101001, 10001111, 10001110, 11110100, 10001101, 1101111, 1001011, 11011100, 10010111, 10010011, 11100100, 10010, 1100110, 100000, 101011, 10111100, 10110001, 111000, 11100, 10010000, 10011110, 11010001, 11010001, 111111, 10011001, 101001, 10001010, 11110111, 11010111, 10011111, 110010, 11010110, 1101, 11010, 10110101, 1110010, 11, 10101010, 1000, 111101, 1111101, 11010000, 1011, 1001100, 1100, 10010110, 11001011, 1101111, 11111000, 10101111, 11000100, 10010111, 1010110, 1110101, 10010100, 1000110, 11100110, 10001, 10011011, 11010000, 11111001, 10110011, 11001000, 10101101, 1010111, 1101001, 1101100, 1110, 10110110, 10010000, 11001111, 10000101, 10110000, 10001010, 11101010, 11001, 10011011, 1101101, 10010000, 10100110, 11100111, 10011110, 1100011, 10000101, 11011101, 11001011, 1100, 11001011, 100101, 1100110, 11100000, 10100001, 11000010, 1111110, 10010011, 1000101, 1011011, 11001101, 1100, 11001111, 10100111, 1101101, 11110111, 1111111, 11101100, 10011011, 11111110, 1000110, 11001010, 11110000, 111000, 10110010, 1110010, 11101100, 1011110, 10010100, 1100001, 11100100, 1110000, 110, 10110011, 101001, 11101110, 10101001, 1110011, 110100, 10010111, 11001000, 10101011, 11101000, 11101111, 100010, 10010111, 111111, 100, 11111110, 101, 11101011, 11111011, 1010111, 10111, 10101100, 111111, 11011011, 1101110, 11111111, 11101110, 111101, 10100, 11111111, 11000001, 1111100, 10100100, 11100101, 11011000, 11101111, 11111110, 10011111, 11111011, 10111011, 11001011, 11010101, 11101000, 1101011, 11000101, 10101110, 11100011, 1101010, 10100010, 101100, 10010010, 1000101, 1001, 1001011, 1111110, 10110100, 111010, 1000000, 10100001, 10100, 10, 11010010, 1011, 10100101, 11010011, 1100000, 111111, 10100110, 100010, 11011100, 11110010, 10000111, 11101101, 11110011, 10001111, 111100, 11000010, 11100010, 10101101, 11110, 1000110, 1111111, 1101010, 10101100, 11101001, 1001111, 11000011, 10101101, 1101111, 10001101, 111110, 1001001, 1010011, 10011, 10001011, 10101100, 11010111, 11100000, 11000, 111010, 10100011, 1000101, 11110111, 11001110, 1111000, 101010, 110000, 1110100, 100100, 11011000, 10001101, 10101000, 1101011, 11111000, 10010110, 1000000, 1011111, 10000101, 11110100, 10000, 10111101, 11001, 1011001, 11011111, 110100, 1010001, 10011001, 10001, 1101110, 10000001, 110111, 10111100, 11100001, 1100111, 10001010, 110100, 1001110, 1101111, 1111000, 11111, 1000101, 10000110, 11100100, 11010111, 11101100, 10010110, 111000, 100111, 10101110, 10011010, 11011110, 11000011, 111100, 1110111, 1111100, 10111100, 1001110, 1111101, 100011, 11010011, 10100100, 10100001, 10010110, 1100001, 10001101, 10000111, 100101, 11001011, 11110000, 110101, 10101101, 11000010, 11100000, 1110010, 11010, 11111011, 10000111, 11100000, 110100, 11110111, 10000110, 10100111, 1001110, 10111110, 11, 10, 10110011, 10010010, 11110001, 10101100, 11, 0, 0]

with open("new.bytes","wb") as f:
    f.write(bytearray([int(str(byte),2) for byte in enc]))

```

8. Now you basically get a file named `decrypted.bytes`. Run the command `file decrypted.bytes` to know the file type.
   First `mv decrypt.bytes decrypt.bytes.gz` then unzip it using `gunzip decrypt.bytes.gz`. You get unzipped file which 
   is cpp source code.

```cpp
#include <iostream>
using namespace::std; class charArray { public: char* cArr; int length; };ostream& operator << (ostream& out, charArray aObj) { int disp = aObj.length; char printChar; while(disp > 0) { printChar = *(aObj.cArr + aObj.length - disp); if ((printChar >= 65) && (printChar <= 90)) { if (printChar+disp > 90) { printChar = ((printChar+disp) % 90) + 64; out << printChar; }else{ printChar += disp; out << printChar; }; } else if ((printChar >= 97) && (printChar <= 122)) { if (printChar+disp > 122) { printChar = ((printChar+disp) % 122) + 96; out << printChar; }else{ printChar += disp; out << printChar; }; } else { out << printChar; }; disp -= 1; }; out << "
"; return out; };int main() { char cArr[23] = "Input_from_python_code"; // personalNote: please add the exact amount of characters to make the string :) 
charArray aObj; aObj.cArr = cArr; aObj.length = (sizeof(cArr) / sizeof(char)) - 1; cout << aObj; return 0; }
```

use a code beautifier on this to analize it

9. Analyze the logic and you can reverse the logic using the following python code

```python
textToDecrypt = "esb{ikjebf_axbqm_wjl_gy_pg}"
ans = []

textlen = len(textToDecrypt)

def dec(text):
    disp = textlen
    for letter in text:
        print(ord(letter))
        if (97 <= ord(letter) <= 122):
            if((ord(letter) - disp) < 97):
                cord = 123 - (97 % (ord(letter) - disp))
                ans.append(chr(cord))
        
            else:
                cord = ord(letter) - disp
                ans.append(chr(cord))
                
        else:
            ans.append(letter)
        
        disp -= 1
        
    
dec(textToDecrypt)
print(''.join(ans))
```

10. Finally you get the flag `dsc{lookin_kinda_mad_at_me}` :) 

**Flag**: `dsc{lookin_kinda_mad_at_me}`

