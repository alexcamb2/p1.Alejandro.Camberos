int circleX, circleY;
int circleX2, circleY2;
int eCircleX, eCircleY;
int openX, openY;
int closeX, closeY;
int lockX, lockY;
int phoneX, phoneY;
int circleSize=100;
color circleColor, baseColor, circleHighLight, currentColor,eColor;
color rect;
boolean circleOver = false, circleOver2 = false, eCircle = false, openOver = false,closeOver = false, lockOver = false, phoneOver = false, on = false, off = false;
String txt = "",txt2 = "", ctxt = "", btxt="";
PImage img;

//Make other buttons / Screen, Connect them all, Then change the font to make it look nicer


void setup(){
  size(1080,1440);
  img = loadImage("25-252467_five-dots-like-a-dice-vector-circle.png");
  circleColor = color(210);
  circleHighLight = color(150);
  eColor = color(255,0,0);
 
  baseColor = color(102); //background
  btxt = "";
  currentColor = baseColor;
  ctxt = btxt;
  
 
  
  //values for blue button location
  circleX = 510;
  circleY = 300;
  
  //values for red button location
  circleX2 = 510;
  circleY2 = 430;
  
  eCircleX = 350;
  eCircleY = 680;
  
  openX = 350;
  openY = 550;
  
  closeX = 680;
  closeY = 550;
  
  lockX = 680;
  lockY = 680;
  
  phoneX = 680;
  phoneY = 380;
  
  
  
  ellipseMode(CENTER);
}

void draw(){
  update(mouseX, mouseY);
  background(currentColor);
  
  fill(255);
  rect(220,80,600,100);
  rect(220,80,100,100);
  rect(720,80,100,100);
  numberDisplay(ctxt);
  stroke(255);

  image(img,230,82,width/14,height/15);
  image(img,730,82,width/14,height/15);
  
  rect(circleX-220, circleY-53, circleSize*3,circleSize+5); //label for 2
  rect(circleX-220, circleY+76, circleSize*3,circleSize+5); //label for 1
  rect(circleX-380, circleY + 198, circleSize*3,circleSize+5); // label for open
  rect(circleX-380, circleY + 328, circleSize*3,circleSize+5); // label for Emergency
  rect(circleX+100, circleY + 198, circleSize*3,circleSize+5); // label for close
  rect(circleX+100, circleY + 328, circleSize*3,circleSize+5); // label for lock
  rect(circleX+100, circleY + 27, circleSize*3,circleSize+5); // label for lock
 
  fill(0);
  
  if (circleOver){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(255);
  ellipse(circleX, circleY, circleSize,circleSize);
  
  if (circleOver2){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(0);
  ellipse(circleX2, circleY2, circleSize, circleSize);

  if (eCircle){
    fill(circleHighLight);
  } else{
    fill(eColor);
  }
  stroke(0);
  ellipse(eCircleX, eCircleY, circleSize, circleSize);
  
  if (openOver){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(0);
  ellipse(openX, openY, circleSize, circleSize);
  
  if (closeOver){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(0);
  ellipse(closeX, closeY, circleSize, circleSize);
  
  if (lockOver){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(0);
  ellipse(lockX, lockY, circleSize, circleSize);
  
  if (phoneOver){
    fill(circleHighLight);
  } else{
    fill(circleColor);
  }
  stroke(0);
  ellipse(phoneX, phoneY, circleSize, circleSize);
  
  fill(255);
  label();
}

void numberDisplay(String a){
   fill(0);
   textSize(70);
   textAlign(CENTER);
   text(a, 500,150);
   
}
void screen(){
    fill(255);
    
}

void update (int x, int y){
  if(overCircle(circleX, circleY, circleSize)){
    circleOver = true;
    circleOver2 = false;
    eCircle = false;
    openOver = false;
    closeOver = false;
    lockOver = false;
    phoneOver = false;

  } else if (overCircle(circleX2,circleY2, circleSize)){
    circleOver2 =true;
    circleOver = false;
    eCircle = false;
    openOver = false;
    closeOver = false;
    lockOver = false;
    phoneOver = false;
  } else if(overCircle(eCircleX,eCircleY,circleSize)){
    circleOver2 =false;
    circleOver = false;
    openOver = false;
    closeOver = false;
    lockOver = false;
    phoneOver = false;
    eCircle = true;
  } else if(overCircle(openX,openY,circleSize)){
    circleOver2 =false;
    circleOver = false;
    eCircle = false;
    closeOver = false;
    lockOver = false;
    phoneOver = false;
    openOver = true;
  }
  else if(overCircle(closeX,closeY,circleSize)){
    circleOver2 =false;
    circleOver = false;
    eCircle = false;
    closeOver = true;
    openOver = false;
    lockOver = false;
    phoneOver = false;
  } else if(overCircle(lockX,lockY,circleSize)){
    circleOver2 =false;
    circleOver = false;
    eCircle = false;
    closeOver = false;
    openOver = false;
    lockOver = true;
    phoneOver = false;
  }
  else if(overCircle(phoneX,phoneY,circleSize)){
    circleOver2 =false;
    circleOver = false;
    eCircle = false;
    closeOver = false;
    openOver = false;
    lockOver = false;
    phoneOver = true;
  }
  else{
    circleOver2=circleOver=eCircle = openOver = closeOver= lockOver = phoneOver = false;
  }

}

void mousePressed(){
  if(circleOver){
    ctxt = "2";
  }
  if(circleOver2){
    ctxt = "1";
  }
  if(eCircle){
    ctxt = "Emergency";
  }
  if(openOver){
    ctxt = "Open";
  }
  if(closeOver){
    ctxt = "Close";
  }
  if(lockOver){
    ctxt = "Lock";
  }
  if(phoneOver){
    ctxt = "Phone";
  }
}
void label(){
  textSize(60);
  text("2",310,320);
  text("1",310,450);
  text("Open",200,570);
  text("Close",800,570);
  text("Lock",800,700);
  text("Phone",810,400);
  textSize(30);
  text("Emergency",200,685);
  fill(200);
}
boolean overCircle(int x, int y, int diameter){
  float disX = x-mouseX;
  float disY = y-mouseY;
  if(sqrt(sq(disX) + sq(disY)) < diameter/2){
    return true;
  }else{
    return false; 
  }
}
