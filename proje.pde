import processing.video.*;
import controlP5.*;
Movie movie;
ControlP5 cp5;
boolean Play;

void setup(){
  size(640,410);
  background(0);
  movie= new Movie(this,"MoonandSeaHDFInalRenderH264.mov");
  movie.play();
  cp5= new ControlP5(this);
  cp5.addButton("Play")

  .setValue(0)

  .setPosition(80,380)

  .setSize(100,30);

   cp5.addButton("Stop")

  .setValue(0)

  .setPosition(280,380)

  .setSize(100,30);

   cp5.addButton("Pause")

  .setValue(0)

  .setPosition(480,380)

  .setSize(100,30);

}

void movieEvent(Movie m){

m.read();

}

void Play(){

movie.play();

 

}

void Stop(){

 movie.pause();

}

void Pause(){

movie.stop();

}

void draw(){

 

image(movie,0,0,width,height-30);

}