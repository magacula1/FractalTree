private double fractionLength = .1; 
private int smallestBranch = 5; 
private double branchAngle = .3;  
double j =110;
double n = 3*Math.PI/2;
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(250);   
  stroke(0,200,0);   
  line(320,480,320,419);   
  //drawBranches(??,??,??,??);  //will add later 
  drawBranches(320,430, j , n) ;
  noLoop();
} 
public void keyTyped()
{
  if (key== ' ' && fractionLength < .95)
  {
    fractionLength=fractionLength+0.003;
    redraw();
   
 
  }
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  //your code here   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  branchLength = branchLength * fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);    
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y); 
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2);
  if (branchLength >= smallestBranch)
  {
    drawBranches(endX1,endY1,branchLength,angle1);
    drawBranches(endX2,endY2,branchLength,angle2);
  }
  
}