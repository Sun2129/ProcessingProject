import controlP5.*;

ControlP5 cp5;

Table table;

boolean minTemp;
boolean maxTemp;

boolean Bar = false;
boolean Scatter = false;

boolean January;
boolean February;
boolean March;
boolean April;
boolean May;
boolean June;
boolean July;
boolean August;
boolean September;
boolean October;
boolean November;
boolean December;

//File Class
class FileIO {
  String filePath;
  Table dataTable;
}

//Date Class
class Date {
  int Month;
  int Year;
  Date(int m, int n) {
    int Month = m;
    int Year = n;
  }
}

//TemperatureData Class
class TemperatureData {
  double minTemperature;
  double maxTemperature;
  double snowFall;
  Date newDate;
  TemperatureData(int m, int n, double min, double max, double snow ) {
    newDate = new Date(m, n);
    double minTemperature = min;
    double maxTemperature = max;
    double snowFall = snow;
  }
}

//Draw Bar Class
class drawBarChart {
  void drawBar() {
    Bar = true;
    Scatter = false;
    background(211,211,211);
    float x = 100 + 20;
    float x1 = 100;
    float x2 = 24;
    //Draw min and max temp bars
    if(minTemp && maxTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)){
    for (TableRow row : table.rows()) {
      stroke(0);
      strokeWeight(1);
      TemperatureData temp = new TemperatureData(row.getInt("Month"), row.getInt("Year"), row.getDouble("Min Temperature"), row.getDouble("Max Temperature"), row.getDouble("Snow Fall"));
        
        if (row.getInt("Max Temperature") > 0) {
          
          fill(128, 0, 0);
          rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
          fill(0, 0, 128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
      
        if (row.getInt("Min Temperature") < 0) {
          
          fill(0, 0, 128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
          fill(128, 0, 0);
          rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x+= x1/x2;
      }
    }
    //Only draw min temp
    else if(minTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)) {
      x = 100 + 20;
      background(211,211,211);
      for (TableRow row : table.rows()) {
        stroke(0);
        strokeWeight(1);
        fill(0,0,128);
        rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        x +=x1/x2;
      }
    
    }  
    //Only draw max temp
    else if(maxTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)) {
      x = 100 + 20;
      background(211,211,211);
      for (TableRow row : table.rows()) {
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        x +=x1/x2;
      }
    }
    
    //Draw months
    if(January){
      x = 100 + 20;
      
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 1){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 1){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 1){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(February){
      x = 100 + 20;
      
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 2){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 2){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 2){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(March){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 3){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 3){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 3){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(April){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 4){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 4){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 4){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(May){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 5){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 5){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 5){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(June){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 6){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 6){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 6){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(July){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 7){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 7){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 7){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(August){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 8){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 8){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 8){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(September){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 9){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 9){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 9){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(October){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 10){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 10){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 10){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(November){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 11){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 11){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 11){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    if(December){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 12){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
              fill(128, 0, 0);
              rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 12){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        rect(x, 700 - 20*row.getFloat("Max Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Max Temperature")) );
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 12){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          rect(x, 700 - 20*row.getFloat("Min Temperature"), 100/24, 700 - (700 - 20*row.getFloat("Min Temperature")) );
        }
        x +=x1/x2;
      }
     }
    }
    
    
    
    
  }
  
  
}

//Scatter Point Class
class ScatterPointPlot {
  void drawScatter() {
    Scatter = true;
    Bar = false;
    background(211,211,211);
    float x = 100 + 20;
    float x1 = 100;
    float x2 = 24;
    //Draw min and max points
    if(minTemp && maxTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)){
    for (TableRow row : table.rows()) {
      TemperatureData temp = new TemperatureData(row.getInt("Month"), row.getInt("Year"), row.getDouble("Min Temperature"), row.getDouble("Max Temperature"), row.getDouble("Snow Fall"));
      
      if (row.getInt("Max Temperature") > 0) {
        stroke(0);
        strokeWeight(1);
        fill(128, 0, 0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 5);
        fill(0, 0, 128);
        circle(x, 700 - 20*row.getFloat("Min Temperature"), 5 );
      }
      
      
      if (row.getInt("Min Temperature") < 0) {
        stroke(0);
        strokeWeight(1);
        fill(0, 0, 128);
        circle(x, 700 - 20*row.getFloat("Min Temperature"), 5);
        fill(128, 0, 0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 5);
      }
      x+= x1/x2;
      
    }
   }
   //Only draw min temp
   else if(minTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)) {
      x = 100 + 20;
      background(211,211,211);
      for (TableRow row : table.rows()) {
        stroke(0);
        strokeWeight(1);
        fill(0,0,128);
        circle(x, 700 - 20*row.getFloat("Min Temperature"), 5 );
        x +=x1/x2;
      }
    
    }  
    //Only draw max temp
    else if(maxTemp && (!January && !February && !March && !April && !May && !June && !July && !August && !September && !October && !November && !December)) {
      x = 100 + 20;
      background(211,211,211);
      for (TableRow row : table.rows()) {
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 5);
        x +=x1/x2;
      }
    } 
    
    // Draw months
    if(January){
      x = 100 + 20;
      
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 1){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 1){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 1){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(February){
      x = 100 + 20;
      
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 2){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 2){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 2){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(March){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 3){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 3){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 3){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(April){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 4){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 4){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 4){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(May){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 5){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 5){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
     
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 5){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(June){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 6){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 6){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 6){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(July){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 7){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 7){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 7){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(August){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 8){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 8){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 8){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(September){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 9){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 9){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 9){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(October){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 10){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 10){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 10){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(November){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 11){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 11){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 11){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
    
    if(December){
      x = 100 + 20;
      if(maxTemp && minTemp){
        for (TableRow row : table.rows()) {
          stroke(0);
          strokeWeight(1);
          if(row.getInt("Month") == 12){
            if (row.getInt("Max Temperature") > 0) {     
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
            }
      
            if (row.getInt("Min Temperature") < 0) {
              fill(0, 0, 128);
              circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
              fill(128, 0, 0);
              circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
            }
          }
          x+= x1/x2;
        }
     }
     else if(maxTemp){
      x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 12){
        stroke(0);
        strokeWeight(1);
        fill(128,0,0);
        circle(x, 700 - 20*row.getFloat("Max Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
     
     else if(minTemp){
       x = 100 + 20;
      
      for (TableRow row : table.rows()) {
        if(row.getInt("Month") == 12){
          stroke(0);
          strokeWeight(1);
          fill(0,0,128);
          circle(x, 700 - 20*row.getFloat("Min Temperature"), 100/24);
        }
        x +=x1/x2;
      }
     }
    }
  }
}


//Setup
void setup() {
  size(1980,1080);
  
  background(211, 211, 211);
  
  //Load table
  table = loadTable("CalgaryWeather.csv", "header");
  
  //Use all parameters of FileIO class
  FileIO file = new FileIO();
  file.filePath = "C:\\Users\\sanch\\Documents\\Work\\Eng 233 - Coding\\Final Project\\sketch_191118a\\data";
  file.dataTable = loadTable("CalgaryWeather.csv", "header");

  cp5 = new ControlP5(this);
  
  //Bar and scatter buttons
  cp5.addButton("BarChart").setValue(0).setPosition(150, 20).setSize(100, 50);
  cp5.addButton("ScatterPlot").setValue(0).setPosition(300, 20).setSize(100, 50);
  
  //Min and max toggles
  Toggle Min = cp5.addToggle("minTemp").setCaptionLabel("ShowMinTemp").setValue(false).setPosition(450,20).setSize(30,20).setState(false);
  Toggle Max = cp5.addToggle("maxTemp").setCaptionLabel("ShowMaxTemp").setValue(false).setPosition(550,20).setSize(30,20).setState(false);
  
  //Months 1-6 toggles 
  Toggle January = cp5.addToggle("January").setCaptionLabel("January").setValue(false).setPosition(650,20).setSize(30,20).setState(false);
  Toggle February = cp5.addToggle("February").setCaptionLabel("February").setValue(false).setPosition(750,20).setSize(30,20).setState(false);
  Toggle March = cp5.addToggle("March").setCaptionLabel("March").setValue(false).setPosition(850,20).setSize(30,20).setState(false);
  Toggle April = cp5.addToggle("April").setCaptionLabel("April").setValue(false).setPosition(950,20).setSize(30,20).setState(false);
  Toggle May = cp5.addToggle("May").setCaptionLabel("May").setValue(false).setPosition(1050,20).setSize(30,20).setState(false);
  Toggle June = cp5.addToggle("June").setCaptionLabel("June").setValue(false).setPosition(1150,20).setSize(30,20).setState(false);
  
  //Months 7-12 toggles
  Toggle July = cp5.addToggle("July").setCaptionLabel("July").setValue(false).setPosition(650,60).setSize(30,20).setState(false);
  Toggle August = cp5.addToggle("August").setCaptionLabel("August").setValue(false).setPosition(750,60).setSize(30,20).setState(false);
  Toggle September = cp5.addToggle("September").setCaptionLabel("September").setValue(false).setPosition(850,60).setSize(30,20).setState(false);
  Toggle October = cp5.addToggle("October").setCaptionLabel("October").setValue(false).setPosition(950,60).setSize(30,20).setState(false);
  Toggle November = cp5.addToggle("November").setCaptionLabel("November").setValue(false).setPosition(1050,60).setSize(30,20).setState(false);
  Toggle December = cp5.addToggle("December").setCaptionLabel("December").setValue(false).setPosition(1150,60).setSize(30,20).setState(false);
}

// Draw 
void draw() {
  stroke(0, 128, 0);
  strokeWeight(1);
  
  //X and y axis
  line(100, 0, 100, displayHeight);
  line(100, 700, displayWidth, 700);
  
  //Y axis labels
  fill(255);
  text("5", 70, 600);
  text("10", 70, 500);
  text("15", 70, 400);
  text("20", 70, 300);
  text("25", 70, 200);
  text("-5", 65, 800);
  text("-10", 65, 900);
  text("-15", 65, 1000);
  
  //X axis labels
  text("1991", 150, 730);
  text("1993", 250, 730);
  text("1995", 350, 730);
  text("1997", 450, 730);
  text("1999", 550, 730);
  text("2001", 650, 730);
  text("2003", 750, 730);
  text("2005", 850, 730);
  text("2007", 950, 730);
  text("2009", 1050, 730);
  text("2011", 1150, 730);
  text("2013", 1250, 730);
  text("2015", 1350, 730);
  text("2017", 1450, 730);
  text("2019", 1550, 730);
}

//Scatter button function
public void ScatterPlot() {
  ScatterPointPlot b1 = new ScatterPointPlot();
  b1.drawScatter();
}

//Bar button function
public void BarChart() {
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
}

//Min toggle function
public void minTemp(){
  minTemp =! minTemp;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
  
}

//Max toggle function
public void maxTemp(){
  maxTemp =! maxTemp;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}

//Toggles for months 
public void January(){
  January =! January;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void February(){
  February =! February;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void March(){
  March =! March;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void April(){
  April =! April;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void May(){
  May =! May;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void June(){
  June =! June;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void July(){
  July =! July;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void August(){
  August =! August;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void September(){
  September =! September;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void October(){
  October =! October;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void November(){
  November =! November;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
public void December(){
  December =! December;
  
  if(Scatter){
  ScatterPointPlot b2 = new ScatterPointPlot();
  b2.drawScatter();
  }
  
  if(Bar){
  drawBarChart b1 = new drawBarChart();
  b1.drawBar();
  }
}
