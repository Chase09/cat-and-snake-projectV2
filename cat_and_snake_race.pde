PImage cat;//Cat image//
PImage snake;//Snake image//
int catY = 29;
int snakeY = 29;





void setup()
{
  fullScreen();//The screen is fullscreen//
  cat = loadImage("cat.jpg");//This loads the cat image//
  snake = loadImage("snake.png");//this Loads the snake image//
}
boolean a = false;

void draw()
{  
  if(a == false)
  {
  
    background(0);//This makes the background black//
    imageMode(CENTER);
    image(cat,50,catY,230,190);//These are the coordinates for the image//
    image(snake,2500,snakeY,230,190);//these are the coordinates for the image//
  
    
  
    
   
    
    if (catY>=1500)
    {
      textSize(100);//Size of the text//
      fill(255);
      text("Cat Wins!",1000,1000);//The message Cat Wins will appear//
    }
  
    if (snakeY>=1500)
    {
      textSize(100);//Size of the text//
      fill(255);
      text("Snake Wins!",1000,1000);//The message Snake Wins will appear//
     
    }
    if (catY >= 1500 || snakeY >= 1500)
    {
      fill(255);
      rectMode(CENTER);
      textAlign(CENTER);
      noStroke();
      rect(1300,600,400,200);
      fill(0);
      text("RESET", 1300,600);
      a = true;
    }
  }
  
}




void keyPressed()
{
  if(key == 'q')//When you press q the cat will move down//
  {
    catY = catY+30;
  }
  if(key == 'p')//When you press p the snake will move//
  {
    snakeY = snakeY+30;
  }
}
void mouseClicked()
{
  if(mouseX >= 1150 && mouseX <= 1450 && mouseY >= 450 && mouseY <=750)
  {
    catY = 29;
    snakeY = 29;
    a = false;
  }
}
