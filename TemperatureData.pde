class TemperatureData
{
       // This is gathering the Temperature and Snowfall data same with as it was reading the date 
      FileIO weather = new FileIO();
      Date date = new Date();
      String [] minTemp = weather.dataTable.getStringColumn("Min Temperature");
      String [] maxTemp = weather.dataTable.getStringColumn("Max Temperature");
      String [] snowFall = weather.dataTable.getStringColumn("Snow Fall");
      
  
}
