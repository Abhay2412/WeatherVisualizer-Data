import controlP5.*;

ControlP5 cp5;

int y_Axis= 100; 
int x_Axis = 450; //x component of the y axis and vice versa

// Toggles for each graph
Toggle barChart;
Toggle scatterPlot;
Toggle snowFall;

// A bunch of toggles we will be using to filter our graphs
Toggle minTemp;
Toggle maxTemp;
Toggle jan;
Toggle feb;
Toggle mar;
Toggle apr;
Toggle may;
Toggle jun;
Toggle jul;
Toggle aug;
Toggle sep;
Toggle oct;
Toggle nov;
Toggle dec;

// creates a variable "axis" that contains labels and whatnot
Axis axis = new Axis();


void setup() {
  size(1200, 700);

  //buttons
  cp5 = new ControlP5(this);

  //Plot Buttons
  barChart = cp5.addToggle("barChartButtonFunction").setValue(true).setPosition(130, 10).setSize(70, 60).setCaptionLabel("BAR CHART");
  scatterPlot = cp5.addToggle("scatterPlotButtonFunction").setValue(false).setPosition(210, 10).setSize(70, 60).setCaptionLabel("SCATTER PLOT");
  snowFall = cp5.addToggle("snowfallButtonFunction").setValue(false).setPosition(950, 10).setSize(70, 60).setCaptionLabel("SNOW FALL");


  //Temp Buttons
  minTemp = cp5.addToggle("toggleValueMinTemp").setValue(1).setPosition(300, 10).setSize(70, 20).setCaptionLabel("SHOW MIN TEMP");
  maxTemp = cp5.addToggle("toggleValueMaxTemp").setValue(1).setPosition(385, 10).setSize(70, 20).setCaptionLabel("SHOW MAX TEMP");

  //Month Buttons
  jan = cp5.addToggle("JANUARY").setValue(0).setPosition(500, 10).setSize(65, 20);
  cp5.addToggle("FEBRUARY").setValue(0).setPosition(570, 10).setSize(65, 20);
  cp5.addToggle("MARCH").setValue(0).setPosition(640, 10).setSize(65, 20);
  cp5.addToggle("APRIL").setValue(0).setPosition(710, 10).setSize(65, 20);
  cp5.addToggle("MAY").setValue(0).setPosition(780, 10).setSize(65, 20);
  cp5.addToggle("JUNE").setValue(0).setPosition(850, 10).setSize(65, 20);
  cp5.addToggle("JULY").setValue(0).setPosition(500, 50).setSize(65, 20);
  cp5.addToggle("AUGUST").setValue(0).setPosition(570, 50).setSize(65, 20);
  cp5.addToggle("SEPTEMBER").setValue(0).setPosition(640, 50).setSize(65, 20);
  cp5.addToggle("OCTOBER").setValue(0).setPosition(710, 50).setSize(65, 20);
  cp5.addToggle("NOVEMBER").setValue(0).setPosition(780, 50).setSize(65, 20);
  cp5.addToggle("DECEMBER").setValue(0).setPosition(850, 50).setSize(65, 20);
}


void draw() {
  background(150);
  axis.Axis();
  BarChart bc = new BarChart();
  if (barChartButtonFunction==true) {
    if ((toggleValueMaxTemp == true) && (toggleValueMinTemp==true))
    {
      background(150);
      bc.drawMaxTempChartg();
      bc.drawMinTempChartg();
      bc.drawMinTempChartl();
      bc.drawMaxTempChartl();
      axis.Axis();
    } else if ((toggleValueMaxTemp == true) && (toggleValueMinTemp==false)) {
      background(150);
      bc.drawMaxTempChartg();
      bc.drawMaxTempChartl();
      axis.Axis();
    } else if ((toggleValueMaxTemp == false) && (toggleValueMinTemp==true)) {
      background(150);
      bc.drawMinTempChartg();
      bc.drawMinTempChartl();
      axis.Axis();
    } else {
      background(150);
      axis.Axis();
    }
  }
  scatterPlot sp = new scatterPlot();
  if (scatterPlotButtonFunction==true) {
    if ((toggleValueMaxTemp == true) && (toggleValueMinTemp==true))
    {
      background(150);
      sp.drawScatterPlotmax();
      sp.drawScatterPlotmin();
      axis.Axis();
    } else if ((toggleValueMaxTemp == true) && (toggleValueMinTemp==false)) {
      background(150);  
      sp.drawScatterPlotmax();
      axis.Axis();
    } else if ((toggleValueMaxTemp == false) && (toggleValueMinTemp==true)) {
      background(150);
      sp.drawScatterPlotmin();
      axis.Axis();
    } else {
      background(150);
      axis.Axis();
    }
  }
  snowFall sf = new snowFall();
  if (snowfallButtonFunction == true) {
    sf.drawSnowFall();
  }
  Months m = new Months();
  if (JANUARY==true) {
    m.jan();
  }
  if (FEBRUARY==true) {
    m.feb();
  }
  if (MARCH==true) {
    m.mar();
  }
  if (APRIL==true) {
    m.apr();
  }
  if (MAY==true) {
    m.may();
  }
  if (JUNE==true) {
    m.jun();
  }
  if (JULY==true) {
    m.jul();
  }
  if (AUGUST==true) {
    m.aug();
  }
  if (SEPTEMBER==true) {
    m.sep();
  }
  if (OCTOBER==true) {
    m.oct();
  }
  if (NOVEMBER==true) {
    m.nov();
  }
  if (DECEMBER==true) {
    m.dec();
  }
}

boolean snowfallButtonFunction;
boolean scatterPlotButtonFunction;
boolean barChartButtonFunction;
boolean toggleValueMinTemp;
boolean toggleValueMaxTemp;
boolean JANUARY;
boolean FEBRUARY;
boolean MARCH;
boolean APRIL;
boolean MAY;
boolean JUNE;
boolean JULY;
boolean AUGUST;
boolean SEPTEMBER;
boolean OCTOBER;
boolean NOVEMBER;
boolean DECEMBER;


void barChartButtonFunction() {
  barChartButtonFunction = true;
  scatterPlotButtonFunction = false;
  
}
void scatterPlotButtonFunction() {
  barChartButtonFunction = false;
  scatterPlotButtonFunction = true;
  
}
void JANUARY() {
  if (JANUARY == true) {
    JANUARY=false;
  } else {
    JANUARY = true;
  }

  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void FEBRUARY() {
  if (FEBRUARY == true) {
    FEBRUARY=false;
  } else {
    FEBRUARY= true;
  }

  JANUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void MARCH() {
  if ( MARCH== true) {
    MARCH=false;
  } else {
    MARCH= true;
  }

  JANUARY = false;
  FEBRUARY = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void APRIL() {
  if (APRIL == true) {
    APRIL =false;
  } else {
    APRIL= true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void MAY() {
  if ( MAY== true) {
    MAY=false;
  } else {
    MAY = true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void JUNE() {
  if ( JUNE== true) {
    JUNE =false;
  } else {
    JUNE= true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void JULY() {
  if (JULY == true) {
    JULY =false;
  } else {
    JULY = true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void AUGUST() {
  if ( AUGUST== true) {
    AUGUST=false;
  } else {
    AUGUST = true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void SEPTEMBER() {
  if (SEPTEMBER == true) {
    SEPTEMBER=false;
  } else {
    SEPTEMBER = true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  OCTOBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void OCTOBER() {
  if ( OCTOBER== true) {
    OCTOBER=false;
  } else {
    OCTOBER= true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  NOVEMBER = false;
  DECEMBER = false;
}
void NOVEMBER() {
  if ( NOVEMBER== true) {
  NOVEMBER =false;
} else {
  NOVEMBER = true;
}
JANUARY = false;
FEBRUARY = false;
MARCH = false;
APRIL = false;
MAY = false;
JUNE= false;
JULY = false;
AUGUST = false;
SEPTEMBER = false;
OCTOBER = false;
DECEMBER = false;
}
void DECEMBER() {
  if (DECEMBER == true) {
    DECEMBER =false;
  } else {
    DECEMBER= true;
  }
  JANUARY = false;
  FEBRUARY = false;
  MARCH = false;
  APRIL = false;
  MAY = false;
  JUNE= false;
  JULY = false;
  AUGUST = false;
  SEPTEMBER = false;
  OCTOBER = false;
  NOVEMBER = false;
  
}
