    private double scale = 2.0;
    private double angle1 = 15;
    private double angle2 = 15;
    private int recursiveDepth = 10;
    public  void setup() {
      background(#DED7D7);
      size(400,400);
    }
    public  void draw() {
      stroke(#4CF536);
      //for(int i = 0;i<8;i++){
      //drawTree(200, 200, 270 -( 45 * i), recursiveDepth);
      //}
    }
     public void drawTree(int x, int y, double angle, int depth) {
        if (depth == 0){
          return;
        }
        //double angleRadians = Math.toRadians(angle);
        double angleRadians = angle * (Math.PI/180);
        int x2 = x + (int) (Math.cos(angleRadians) * depth * scale);
        int y2 = y + (int) (Math.sin(angleRadians) * depth * scale);
        line(x, y, x2, y2);
        drawTree(x2, y2, angle - angle1, depth - 1);
        drawTree(x2, y2, angle + angle2, depth - 1);
    }
    void keyPressed(){
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
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,270,recursiveDepth);
        }
      }
      if(key == '@'){
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,225,recursiveDepth);
        }
      }
       if(key == '#'){
         stroke(#DED7D7);
         for(int i = 0;i<=5;i++){
           drawTree(200,200,180,recursiveDepth);
        }
      }
       if(key == '$'){
         stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,135,recursiveDepth);
        }
      }
      if(key == '%'){
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
        drawTree(200,200,90,recursiveDepth);
        }
      }
      if(key == '^'){
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
          drawTree(200,200,45,recursiveDepth);
        }
      }
      if(key == '&'){
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,0,recursiveDepth);
        }
      }
      if(key == '*'){
        stroke(#DED7D7);
        for(int i = 0;i<=5;i++){
           drawTree(200,200,315,recursiveDepth);
        }
      }
    }
