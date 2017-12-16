PImage photo;
PFont font;
final int WIDTH = 2448/4;
final int HEIGHT = 3264/4;
final int NUMBER = 87;
float[] x_raw = new float[NUMBER];
float[] y_raw = new float[NUMBER];

float[] x = new float[NUMBER];
float[] y = new float[NUMBER];

float factor = 0.0214765*4;



void setup() {
  size(816,612);
  photo = loadImage("F:/Friedrich/2017/Praktikum4/428/data/laue/laue.jpeg");
  photo.resize(408*2,0);
  
  String[] lines = loadStrings("../points.txt");
  for(int i=1;i<lines.length-1;i++){
    //println(lines[i]);
    String[] line = split(lines[i], '\t');
    //println(line.length);
    int index = i-1;
    println(line[5]+ " " + line[6]);
    x_raw[index] = float(line[5])/factor;
    y_raw[index] = float(line[6])/factor;
  }
  
  lines = loadStrings("../miller.txt");
  for(int i=0;i<lines.length;i++){
    println(lines[i]);
    String[] line = split(lines[i], '\t');
    println(line.length);
    if(line.length < 3){
      x[i] = -100;
      y[i] = -100;
    }else{
      x[i] = (float(line[4])+34.534)/factor;
      y[i] = (float(line[5])+27.662)/factor;
    }
  }

  font = createFont("Calibri-12.vlw", 12);
  textFont(font);
  
}


void draw() {
  image(photo, 0, 0);
  fill(255, 0, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x_raw[i], y_raw[i], 5, 5);
    text(""+(i+1), x_raw[i], y_raw[i]);
  }
  
  fill(0, 255, 0);
  for(int i=0;i<NUMBER;i++){
    ellipse(x[i], y[i], 5, 5);
    text(""+(i+1), x[i], y[i]);
  }
}

void mousePressed() {
  save("laue.png");
}