## Regex use in 
1. Form validation
2. Pattern matching software
3. To develop  Translater - (compuler , interprater etc)
4. digital circuit
5. protocol TCP/IP , UDP

```java
import java.util.regex.Patter;
import java.utill.regex.Matcher;
class RegexDemo{
  public static void main(string [] args){
    Pattern p = Pattern.compile("ab");  // static factory method.
    Matcher m = p.matcher("ababbab");  // target string.
    int count =0;
    while(m.find()){
      count++;
      System.out.println(m.start()+" and the end index " + m.end() +"-----"+ m.group());
      
    }
    System.out.pritnln("number of count are mached "+ count);


  }
}
```
##Q. what is the static factory method ?
Ans=> 
---
## pattern:
- Compiled version of Regular expression.
-- Equivalent java Object of Regular expression.
```java 
public static Pattern compile(String ref){ } // this is internal working System.
```
## Matcher
- we can use Matcher object  to match the given pattern in the target.
- we can Create Matcher object by using matcher() method of pattern class.
```java
public Matcher matcher(String target){ }
```
---
## Character classes
**[abc]** = Either 'a' or 'b' or 'c'

**[^abc]** = Except 'a', 'b', and 'c'(it mean other wise a, b, c character.)

**[a-z]** = Any lower cases Alphabet Symbol.

**[A-Z]** = Any upper cases Alphabet sybmol.

**[a-zA-z]** = Any alphabet symbol

**[0-9]** = Any digit form 0 * 9

**[a-zA-Z0-9]** = Any alphanumeric character.

**[^a-zA-Z0-9]** = Except alphanumeric character.

**[\s]** =  Space character.

**[\S]** = except Space character any other character.


**[\d]** = any digit from 0 to 9 [0-9]

**[\D]** = excpeet digit any character

**[\w]** = Any word character [a-zA-z0-9]

**[\W]** = except word character i.e special characters.

**.** = any character

```java
import java.util.regex;
class RegExDemo{
  public static void main(String args[]){
    Patter p = Pattern.compile("\\s");  // extra space character will ingnore anotehr slace character
    Maatcher m = p.matcher("a7b k@9");
    while(m.find()){
      System.out.println(m.star()+"...."+m.group());
    }
  }
}
```


