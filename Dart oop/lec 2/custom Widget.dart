class TextWidget 
{
  String text;
  String textColor;
  int textSize;
  int letterSpacing;
  int wordSpacing;
  int height;
  String fontWeight;
  

  TextWidget(this.text, {this.textColor = "", this.textSize = 0, this.letterSpacing = 0, this.wordSpacing = 0,this.height = 0,this.fontWeight=""});

  void display() 
  {
    print("Text: $text, Color: $textColor, Size: $textSize, letterspacing: $letterSpacing, wordSpacing: $wordSpacing,height: $height,fontWeight: $fontWeight");
  }
}

void main() {
  TextWidget myText = TextWidget
  (
    "Hello, World!",
    textColor: "blue",
    textSize: 20,
    letterSpacing: 5,
    wordSpacing: 4,
    height: 2,
    fontWeight: "fontWeight.bold",
  );
  
  myText.display();
}