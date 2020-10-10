class Axis 
{
  void Axis() 
  {
  //axis 
  strokeWeight(3);
  stroke(0);
  line(y_Axis, 0, y_Axis, 700);
  line(y_Axis, x_Axis, 1200, x_Axis);

  // Positive y-Axis labels in the visualization  
  fill(255);
  textAlign(RIGHT);
  text("0", y_Axis - 5, x_Axis);
  text("5", y_Axis - 5, x_Axis - 50);
  text("10", y_Axis - 5, x_Axis - 100);
  text("15", y_Axis - 5, x_Axis - 150);
  text("20", y_Axis - 5, x_Axis - 200);
  text("25", y_Axis - 5, x_Axis - 250);

  //Negative y-Axis Labels in the visualization 
  textAlign(RIGHT);
  text("-5", y_Axis - 5, x_Axis + 50);
  text("-10", y_Axis - 5, x_Axis + 100);
  text("-15", y_Axis - 5, x_Axis + 150);
  text("-20", y_Axis - 5, x_Axis + 200);
  
  //Units for axes
  fill(255,0,0);
  text("Celsius",y_Axis-50, x_Axis -100);
  fill(0,0,255);
  text("Celsius",y_Axis-50, x_Axis -75);
  fill(255);
  text("Cm",y_Axis-50, x_Axis -50);
  fill(255);
  text("Year", y_Axis +545, x_Axis + 200);
 

  //x-Axis Labels in the visualization 
  textAlign(CENTER, BOTTOM);
  int labelPosition = y_Axis + 54;
  for (int i = 1991; i < 2020; i+=2) {
    fill(255);
    text(i, labelPosition, x_Axis + 25);
    labelPosition += 72;
  }
 }
}
