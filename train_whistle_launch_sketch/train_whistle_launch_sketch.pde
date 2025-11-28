//train whistle Sound Effect from <a href="https://pixabay.com/sound-effects/?utm_source=link-attribution&utm_medium=referral&utm_campaign=music&utm_content=102834">Pixabay</a>

//import the sound library
import processing.sound.*;

Train train;

//Soundfiles
SoundFile toot;
SoundFile ding;

//Timer variables
int timerLength = 60; //Terget value for timer
int count; //Current value for timer

void setup() {
  toot = new SoundFile(this, "train-whistle.wav");
  ding = new SoundFile(this, "pling.wav");
  size(400, 400);
  //load the sound effect from the data folder

  train = new Train(random(100, 300), random(0.5, 2));
}

void draw() {
  background(255);

  if(count >= timerLength){
    count = 0;
    if(!ding.isPlaying()) ding.play();
    background(random(255), random(225), random(225));
  }
  count++;

  train.update();
}

void keyPressed(){
 //press space to toot the horn! But don't allow it to keep starting
  if (key == ' ' && !toot.isPlaying()){
    toot.play(); 
     

  }
  
}
