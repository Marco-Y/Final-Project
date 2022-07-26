import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Boolean draw=false;
//
void setup() {
  //Display Checker
  //Display Orientation
  //Display and CANVAS Checker
  size(1200, 750); //Landscape
  //
  //Population
  drawingSurfaceX = width*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1/2;
  drawingSurfaceHeight = height;
  drawingDiameter = width*1/100;
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
}//End setup
//
void draw() {
  if ( draw=true && mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth  && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}//End draw
  //
  void keyPressed() {
  }//End keyPressed
//
void mousePressed() {
  if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth  && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw=true) {
      draw=false;
    } else {
      draw=true;
    }
  }
}//End mousePressed
//
//End MAIN Program
