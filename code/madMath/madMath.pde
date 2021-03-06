//   __  __             _   __  __         _    _     
//  |  \/  |           | | |  \/  |       | |  | |    
//  | \  / |  __ _   __| | | \  / |  __ _ | |_ | |__  
//  | |\/| | / _` | / _` | | |\/| | / _` || __|| '_ \ 
//  | |  | || (_| || (_| | | |  | || (_| || |_ | | | |
//  |_|  |_| \__,_| \__,_| |_|  |_| \__,_| \__||_| |_|
//
// Lead designer and programer: Dr. Pineda
//
// Mad Math is a competitive single player game to hone your mental math skills.

PFont f1;
int fontSize1 = 40;

static final int splashMode = 0;
static final int setupMode = 1;
static final int gameMode = 2;
static final int resultMode = 3;
static final int leaderboardMode = 4; //<>//
static final int creditsMode = 5;
int mode = splashMode;
int start;

void setup() { //<>//
  size(600, 300);
  start = millis();
  frameRate(60);
  
  f1 = createFont("Lato-Black-48", fontSize1, true);
}

void draw() { 
  println(splashMode);
  
  switch(mode) {
    case splashMode: //<>//
      int t1 = millis() - start;
      splash();
      if (t1 >=5000) {
        mode = setupMode;
      }
      break;
    case setupMode:
      gameSetup();
      break;
    case gameMode:
      game();
      break;
    case resultMode:
      result();
      break;
    case leaderboardMode:
      leaderboard();
      break;
    case creditsMode:
      credits();
      break;
  }  
}