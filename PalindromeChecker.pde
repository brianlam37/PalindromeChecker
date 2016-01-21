public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String str= new String();
  for(int j=word.length()-1;j>=0;j--)
  {

  str+=word.charAt(j);
  if(onlyLetters(noSpaces(str.toLowerCase())).equals(onlyLetters(noSpaces(word.toLowerCase()))))
  {
    return true;
  }    
  }

  return false;
}

public String noSpaces(String sWord){
String st = new String();
  for(int i=0; i<sWord.length();i++)
  {
  if(sWord.charAt(i)!=' '){
  st+= sWord.charAt(i);
  }
  
  }
  return st;
}

public String onlyLetters(String sWord){
String st = new String();
  for(int i=0; i<sWord.length();i++)
  {
  if(Character.isLetter(sWord.charAt(i))==true){
  st+=sWord.charAt(i);
  }
  }
  return st;
}