import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
//
void setup() {
  //Display Checker
  //Display Orientation
  //Display and CANVAS Checker
  size(550, 770); //Landscape
  //
  //Population
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  drawingDiameter = width*1/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
}//End setup
//
void draw() {
  //if (draw == true) ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  if ( draw=true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth  && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) 
}//End draw
  //
  void keyPressed() {
  }//End keyPressed
//
void mousePressed() {
  if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth  && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight )
    if (draw=true) {
      draw=false;
    } else {
      draw=true;
    }
}//End mousePressed
//
//End MAIN Program
