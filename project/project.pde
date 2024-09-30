
import controlP5.*;
ControlP5 monthly, yearly;


import javax.swing.JOptionPane;
sasa
PFont Font;
PFont grade;



int month = 730;

int year = 8760;



int A_limit = 10000;      // each variable represents the 'max' watts allowed for each grade
int B_limit = 20000;
int C_limit = 30000;
int D_limit = 40000;
int E_limit = 50000;




void setup()
{
  size(400, 400);
  background(255, 255, 255);



  //fonts for the grade and numbers respectively
  grade = createFont("Arial Black", 32, true);
  Font = createFont("Georgia", 32, true);
}

void draw()
{
  int lightbulb, fridge, desktop, stove, TV;
  background(255);
  fill(0);






  desktop=readInt("desktop=");    //takes the number given by the user and assigns it to var

  textFont(Font);
  text("desktop", 10, 40);
  text(desktop, 160, 40);

  lightbulb=readInt("lightbulb=");

  textFont(Font);
  text("lightbulb", 10, 80);
  text(lightbulb, 160, 80);

  fridge=readInt("fridge=");

  textFont(Font);
  text("fridge", 10, 120);
  text(fridge, 160, 120);

  stove=readInt("stove=");
  text("stove", 10, 160);
  text(stove, 160, 160);



  TV=readInt("TV=");
  text("TV", 10, 200);
  text(TV, 160, 200);







  int hours = 24;  //amount of hours being measured

  int watts = 1000;  //1000 watts = 1 KhW
  //sum = variable*hours measured/watts(1000)
  int sum = ( TV*hours/watts +stove*hours/watts + fridge*hours/watts + desktop*hours + lightbulb*hours/watts) ;
  textFont(Font);
  text(sum, 100, 300);
  text("sum=", 10, 300);



  // SERIES OF IF/ELSE STATEMENTS FOR GRADING //

  if (sum<=A_limit)
  {

    textFont(grade);
    fill(0, 255, 0);
    text("GRADE",200,350);
    text("A", 350, 350);
  } else if (sum<=B_limit)
  {
    textFont(grade);
    fill(177, 252, 3);
    text("GRADE",200,350);
    text("B", 350, 350);
  } else if (sum<=C_limit)
  {
    textFont(grade);
    fill(252, 252, 3);
    text("GRADE",200,350);
    text("C", 350, 350);
  } else if (sum<=D_limit)
  {
    textFont(grade);
    fill(252, 198, 3);
    text("GRADE",200,350);
    text("D", 350, 350);
  } else if (sum<=E_limit)
  {
    textFont(grade);
    fill(252, 136, 3);
    text("GRADE",200,350);
    text("E", 350, 350);
  } else
  {
    textFont(grade);
    fill(252, 3, 3);
    text("GRADE",200,350);
    text("F", 350, 350);
  }
}



//THIS BLOCK OF CODE IS TAKEN FROM A PAST LAB ( LAB 5/6?)
int readInt(String text)
{
  int f = 0;
  {
    //text on window
    String s = JOptionPane.showInputDialog(null, text, "Enter Watts ", JOptionPane.QUESTION_MESSAGE);  //opens window for user input
    try {
      f = Integer.parseInt(s);
    }
    catch(NumberFormatException e)
    {
      println("you did not enter a number!");
    }
    //go back to f
    return f;
  }
}
