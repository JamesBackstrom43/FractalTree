    private double scale = 2.0;
    private double leftDeltaAngle = 15;
    private double rightDeltaAngle = 15;
    private int recursiveDepth = 10;
    public  void setup() {
      background(150);
      size(400,400);
    }
    public  void draw() {
      stroke(#4CF536);
      for(int i = 0;i<8;i++){
      drawTree(200, 200, 270 -( 45 * i), recursiveDepth);
      }
    }

    
    /** Draw the tree recursively, rooted at (x,y)
      * x - x coordinate
      * y - y coordinate
      * angle - angle of subtree
      * depth - recursive depth of tree (>= 1)
      */
     public void drawTree(int x, int y, double angle, int depth) {
        // base case
        if (depth == 0) return;
        // compute end coordinate
        double angleRadians = Math.toRadians(angle);
        int x2 = x + (int) (Math.cos(angleRadians) * depth * scale);
        int y2 = y + (int) (Math.sin(angleRadians) * depth * scale);
        
        // draw tree recursively
        line(x, y, x2, y2);
        drawTree(x2, y2, angle - leftDeltaAngle, depth - 1);
        drawTree(x2, y2, angle + rightDeltaAngle, depth - 1);
    }
   public void keyPressed(){
      if(key == '1'){
        drawTree(200, 200, 270, recursiveDepth);
      }
      if(key == '2'){
        drawTree(200,200,225,recursiveDepth);
      }
       if(key == '3'){
        drawTree(200,200,180,recursiveDepth);
      }
       if(key == '4'){
        drawTree(200,200,135,recursiveDepth);
      }
      if(key == '5'){
        drawTree(200,200,90,recursiveDepth);
      }
      if(key == '6'){
        drawTree(200,200,45,recursiveDepth);
      }
      if(key == '7'){
        drawTree(200,200,0,recursiveDepth);
      }
      if(key == '8'){
        drawTree(200,200,315,recursiveDepth);
      }
      if(key == '!'){
        stroke(150);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,270,recursiveDepth);
        }
      }
      if(key == '@'){
        stroke(150);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,225,recursiveDepth);
        }
      }
       if(key == '#'){
         stroke(150);
         for(int i = 0;i<=5;i++){
           drawTree(200,200,180,recursiveDepth);
        }
      }
       if(key == '$'){
         stroke(150);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,135,recursiveDepth);
        }
      }
      if(key == '%'){
        stroke(150);
        for(int i = 0;i<=5;i++){
        drawTree(200,200,90,recursiveDepth);
        }
      }
      if(key == '^'){
        stroke(150);
        for(int i = 0;i<=5;i++){
          drawTree(200,200,45,recursiveDepth);
        }
      }
      if(key == '&'){
        stroke(150);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,0,recursiveDepth);
        }
      }
      if(key == '*'){
        stroke(150);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,315,recursiveDepth);
        }
      }
    }
