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

public String reverse(String str)
{
    //makes reverse lowercase
    String lower = new String();
    lower = (str.toLowerCase());
    //takes out spaces
    String noSpace = new String();
    for (int i = 0; i < lower.length(); i++)
    {
        if (!(lower.substring(i,i+1).equals(" ")))
            noSpace = noSpace+ lower.substring(i, i+1);
    }
    //takes out special characters
    String noLetters = new String();
    for (int i = 0; i < noSpace.length(); i++){
      if (Character.isLetter(noSpace.charAt(i)))
            noLetters = noLetters+noSpace.substring(i,i+1);
    }
   //reverses it
    String sNew = new String();
    for (int i = noLetters.length()-1; i>=0; i --)
    {
      sNew = sNew + noLetters.substring(i,i+1);
    }
        return sNew;
}

public String onlyLetters(String word)
{
    //takes out spaces of word
    String noSpace = new String();
    for (int i = 0; i < word.length(); i++)
    {
        if (!(word.substring(i,i+1).equals(" ")))
            noSpace = noSpace+ word.substring(i, i+1);
    }
    //removes special characters
    String noLetters = new String();
    for (int i = 0; i < noSpace.length(); i++){
      if (Character.isLetter(noSpace.charAt(i)))
            noLetters = noLetters+noSpace.substring(i,i+1);
    }
    //changes to lowercase
    String lastOne = new String();
    lastOne = (noLetters.toLowerCase());
    return lastOne;
    
}


public boolean palindrome(String word)
{
  String newWord = onlyLetters(word);
  if (newWord.equals(reverse(word)))
      return true;
  else
  return false;
}

