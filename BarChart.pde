class BarChart 
{
  
  FileIO weather = new FileIO();
  // This variavble is to find the data in the rows for Min Temp and Max Temp 
  int totalRows = weather.dataTable.getRowCount();
  //This sets the variables to the axis which can manipulated 
  int a = y_Axis;
  int b = y_Axis;
  int c = y_Axis;
  float t; // Temp variable to hold the temp from the data point   
  int d; // The date variable to hold the date from the data point 
  TemperatureData tempData = new TemperatureData();

  void drawMaxTempChartg() // creates max temp bar graph for max temperatures greater than 0 degree celsius
  {
    a=y_Axis;
    for (int i = 0; i < totalRows; i++) 
    {
      t = float(tempData.maxTemp[i]);
      d = int(tempData.date.year[i]);
      stroke(0);
      fill(255,0,0);
      strokeWeight(1);
      if (t > 0)
      {
        rectMode(CORNERS); // This modifies the rectangles corner and takes in these parameters, 4 in total 
        rect(a, x_Axis, a+3, (x_Axis - t*10)); // we used a ratio of 10:1 for the temperture ie. for every 10 pixels the difference is 1 degree celsius
        a += 3;
      } else 
      a+=3;
    }
  }
  void drawMaxTempChartl() // creates max temp bar graph for max temperatures less than 0 degree celsius
  {
    a=y_Axis;
    for (int i = 0; i < totalRows; i++) 
    {
      t = float(tempData.maxTemp[i]);
      d = int(tempData.date.year[i]);
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(1);
      if (t < 0) 
      {
        rectMode(CORNERS);
        rect(a, x_Axis, a+3, (x_Axis + (-t*10)));
        a += 3;
      } else 
      a+=3;
    }
  }

  void drawMinTempChartg()  // creates min temp bar graph for min temperatures greater than 0 degree celsius
  {
    b=y_Axis;
    for (int i = 0; i < totalRows; i++) 
    {
      t = float(tempData.minTemp[i]);
      d = int(tempData.date.year[i]);
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(1);
      if (t > 0)
      {
        rectMode(CORNERS);
        rect(b, x_Axis, b+3, (x_Axis - t*10));
        b += 3;
      } else b+=3;
    }
  }
  void drawMinTempChartl()   // creates min temp bar graph for min temperatures less than 0 degree celsius
  {
    b=y_Axis; 
    for (int i = 0; i < totalRows; i++) 
    {
      t = float(tempData.minTemp[i]);
      d = int(tempData.date.year[i]);
      fill(0, 0, 255);
      stroke(0);
      strokeWeight(1);
      if (t < 0) 
      {
        rectMode(CORNERS);
        rect(b, x_Axis, b+3, (x_Axis + (-t*10)));
        b += 3;
      } else 
      b+=3;
    }
  }
}
