class snowFall {

  FileIO weather = new FileIO();
  int y = y_Axis;
  int x = x_Axis;
  int totalrows = weather.dataTable.getRowCount();

  TemperatureData tempData = new TemperatureData();
  void drawSnowFall() {
    int i=0;
    for ( i= 0; i <totalrows; i++) {
      float s = float(tempData.snowFall[i]);
     
      
      fill(255);
      strokeWeight(1);
      stroke(255);
      ellipse(y + 1.5, x - s*10, 3, 3);


      y += 3;
    }
  }
}
