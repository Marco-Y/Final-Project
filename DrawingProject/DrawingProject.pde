import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight;
Boolean draw=false;
color defaultGrey= color(185, 185, 185, 255); //rgba
color resetWhite=#FFFFFF;
//
void setup() {
  //Display Checker
  //Display Orientation
  //Display and CANVAS Checker
  size(1200, 750); //Landscape
  //
  //populationVariables();
  drawingSurfaceX = width*1/2;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*1/2;
  drawingSurfaceHeight = height;
  drawingDiameter = width*1/100;
  //
  selectingSurfaceX *= 0;
  selectingSurfaceY *= 0;
  selectingSurfaceWidth = width*1/2;
  selectingSurfaceHeight = height;
  //background
  fill(defaultGrey);
  rect(selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight);
  fill(resetWhite);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
}//End setup
//
void draw() {
  if (draw==true) {
    if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) {
      line(mouseX, mouseY, pmouseX, pmouseY);
      fill(defaultGrey);
      rect(selectingSurfaceX, selectingSurfaceY, selectingSurfaceWidth, selectingSurfaceHeight);
      fill(resetWhite);
    } else {
      if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) {
        fill(resetWhite);
        line(mouseX, mouseY, pmouseX, pmouseY);
      }
    }
  }
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX> drawingSurfaceX && mouseX< drawingSurfaceX+drawingSurfaceWidth  && mouseY> drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) {
    if ( draw==true ) {
      draw=false;
    } else {
      draw=true;
    }
  }//End mousePressed
  //
  //End MAIN Program
