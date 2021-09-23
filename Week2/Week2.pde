PImage img1, img2, img3, img4;
float x;
float speedX = 2;
void setup(){
 size(640, 480, P2D); 
 img1 = loadImage("background.jpg");
 img2 = loadImage("spaceinvader.png");
 img3 = loadImage("dragon.png");
 img4 = loadImage("airplane.png");
 x = width/2;
}

void draw(){
  imageMode(CORNER);
  image(img1, 0, 0, width, height);
  
  x += speedX;
  if (x > width-100 || x < 0){
    speedX *= -1;
  }
  image(img2, x, 60, 100, 100);
  image(img3, 120, 200, 300, 300);
  image(img4, 300, 150, 80, 80);
}
