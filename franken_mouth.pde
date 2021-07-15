
float x1 = 625;
float y1 = 400;
float [ ] x2 = {400, 800, 600}; // 落下してくるもののXの値
float [ ] y2 = {-180, -60, -250}; // 落下してくるもののYの値
float [ ] speed = {0, 0, 0}; // 落下してくるもののスピード
float rect_w = 50, rect_h = 50; // 背景の正方形の一片の長さ
int stat = 0; // 画面状態を表す状態変数
float w = 400 ; // kcalのX座標
int count = (0); // kcalの値
int count2 = 0;

void setup()
{
  size(1250, 700);
  frameRate(60);
}

void mousePressed()
{
  switch(stat)
  {
    case 0:
    // 口をクリックしたらゲーム画面に移る
    if(514 < mouseX && mouseX < 737 && 436 < mouseY && mouseY < 642)
    {
      if(( y2[0] > 635 ) & ( y2[1] > 635 ))
      {
        reset();
      } else
      {
        stat = 1;
      }
    }
    break;
  
    // TITLEをクリックするとタイトルに戻る
    case 1:
    if(1103 < mouseX && mouseX < 1214 && 642 < mouseY && mouseY < 684)
    {
      stat = 0;  
    }
    
    // RETRYをクリックすると再スタート
    if(34 < mouseX && mouseX < 146 && 642 < mouseY && mouseY < 684)
    {      
      reset();
    }
    break;
  }
}

void reset()
{
  if (count2 < count) {
    count2 = count;
  }
  count = 0;
  speed[0] = 1;
  speed[1] = 1;
  y2[0] = -180;
  y2[1] = -60;
}  

void draw()
{
  switch(stat)
  {
    // タイトル画面の操作
    case 0:
    // 背景
    rectMode(CENTER);
    for (int x2 = 25; x2 < width; x2 += rect_w)
    {
      for (int y2 = 25; y2 < height; y2 += rect_h)
      {
        if ( (x2 + y2) % (rect_w + rect_h) == 0 )
        {
          fill(205, 245, 188);
        } else 
        {
          fill(61, 72, 57);
        }
        rect(x2, y2, rect_w, rect_h);
      }
    }
  
    // 顔の輪郭 & ボルト
    fill(193, 183, 183);
    strokeWeight(5);
    rect(x1, y1 - 14 * 5, 74 * 5, 6 * 5);
    rect(x1 + 36 * 5, y1 - 14 * 5, 5 * 5, 14 * 5);
    fill(211, 196, 117);
    beginShape();
    vertex(x1 - 30 * 5, y1 - 30 * 5);
    vertex(x1 - 30 * 5, y1 + 30 * 5);
    vertex(x1 - 25 * 5, y1 + 40 * 5);
    vertex(x1 - 25 * 5, y1 + 50 * 5);
    vertex(x1 -  8 * 5, y1 + 50 * 5);
    vertex(x1 -  8 * 5, y1 + 54 * 5);
    vertex(x1 +  8 * 5, y1 + 54 * 5);
    vertex(x1 +  8 * 5, y1 + 50 * 5);
    vertex(x1 + 25 * 5, y1 + 50 * 5);
    vertex(x1 + 25 * 5, y1 + 40 * 5);
    vertex(x1 + 30 * 5, y1 + 30 * 5);
    vertex(x1 + 30 * 5, y1 - 30 * 5);
    vertex(x1 - 30 * 5, y1 - 30 * 5);
    endShape();
    line(x1, y1 + 51 * 5, x1, y1 + 54 * 5);
    strokeWeight(2);
    line(x1 - 25 * 5, y1 - 3 * 5, x1 - 28 * 5, y1 +  3 * 5);
    line(x1 - 28 * 5, y1 + 3 * 5, x1 - 25 * 5, y1 +  9 * 5);
    line(x1 - 25 * 5, y1 + 9 * 5, x1 - 25 * 5, y1 + 22 * 5);
    line(x1 + 25 * 5, y1 - 3 * 5, x1 + 28 * 5, y1 +  3 * 5);
    line(x1 + 28 * 5, y1 + 3 * 5, x1 + 25 * 5, y1 +  9 * 5);
    line(x1 + 25 * 5, y1 + 9 * 5, x1 + 25 * 5, y1 + 22 * 5);
  
    // 耳
    strokeWeight(5);
    rect(x1 - 31.5 * 5, y1, 3 * 5, 12 * 5);
    rect(x1 + 31.5 * 5, y1, 3 * 5, 12 * 5);
  
    // 髪
    fill(0);
    beginShape();
    vertex(x1 - 30 * 5, y1 - 30 * 5);
    vertex(x1 - 30 * 5, y1 - 20 * 5);
    vertex(x1 - 25 * 5, y1 - 15 * 5);
    vertex(x1 - 20 * 5, y1 - 20 * 5);
    vertex(x1 - 15 * 5, y1 - 15 * 5);
    vertex(x1 - 10 * 5, y1 - 20 * 5);
    vertex(x1 -  5 * 5, y1 - 15 * 5);
    vertex(x1 +  0 * 5, y1 - 20 * 5);
    vertex(x1 +  5 * 5, y1 - 15 * 5);
    vertex(x1 + 10 * 5, y1 - 20 * 5);
    vertex(x1 + 15 * 5, y1 - 15 * 5);
    vertex(x1 + 20 * 5, y1 - 20 * 5);
    vertex(x1 + 25 * 5, y1 - 15 * 5);
    vertex(x1 + 30 * 5, y1 - 20 * 5);
    vertex(x1 + 30 * 5, y1 - 30 * 5);
    endShape();
  
    // 口
    strokeWeight(2);
    fill(121, 35, 47);
    rect(x1, y1 + 28 * 5, 44 * 5, 38 * 5);
    
    // 鼻
    line(x1 - 3 * 5, y1 - 6 * 5, x1 + 3 * 5, y1 - 6 * 5);
    line(x1 - 3 * 5, y1 + 6 * 5, x1 + 3 * 5, y1 + 6 * 5);
    line(x1 - 3 * 5, y1 - 6 * 5, x1 - 3 * 5, y1 + 3 * 5);
    line(x1 + 3 * 5, y1 - 6 * 5, x1 + 3 * 5, y1 + 3 * 5);
    line(x1 - 3 * 5, y1 - 6 * 5, x1 - 5 * 5, y1 + 2 * 5);
    line(x1 + 3 * 5, y1 - 6 * 5, x1 + 5 * 5, y1 + 2 * 5);
    line(x1 - 3 * 5, y1 + 6 * 5, x1 - 5 * 5, y1 + 2 * 5);
    line(x1 + 3 * 5, y1 + 6 * 5, x1 + 5 * 5, y1 + 2 * 5);
    line(x1 - 3 * 5, y1 - 7 * 5, x1 + 3 * 5, y1 - 7 * 5);
    
    // 目
    fill(255);
    rect(x1 - 11 * 5, y1 - 4 * 5, 10 * 5, 5 * 5);
    rect(x1 + 11 * 5, y1 - 4 * 5, 10 * 5, 5 * 5);
    line(x1 - 18 * 5, y1 - 7 * 5, x1 - 5 * 5, y1 - 7 * 5);
    line(x1 + 18 * 5, y1 - 7 * 5, x1 + 5 * 5, y1 - 7 * 5);
    line(x1 - 18 * 5, y1 - 7 * 5, x1 - 18 * 5, y1 - 11 * 5);
    line(x1 -  5 * 5, y1 - 7 * 5, x1 -  5 * 5, y1 - 11 * 5);
    line(x1 + 18 * 5, y1 - 7 * 5, x1 + 18 * 5, y1 - 11 * 5);
    line(x1 +  5 * 5, y1 - 7 * 5, x1 +  5 * 5, y1 - 11 * 5);
    
    fill(121, 35, 47);
    rect(210, 450, 340, 420);
    // 肉
    fill(255);
    beginShape();
    vertex(100 - 15 * 2, 300 - 15 * 2);
    vertex(100 - 15 * 2, 300 -  5 * 2);
    vertex(100 - 20 * 2, 300 -  5 * 2);
    vertex(100 - 20 * 2, 300 - 10 * 2);
    vertex(100 - 25 * 2, 300 - 10 * 2);
    vertex(100 - 25 * 2, 300 + 10 * 2);
    vertex(100 - 20 * 2, 300 + 10 * 2);
    vertex(100 - 20 * 2, 300 +  5 * 2);
    vertex(100 - 15 * 2, 300 +  5 * 2);
    vertex(100 - 15 * 2, 300 + 15 * 2);
    vertex(100 + 15 * 2, 300 + 15 * 2);
    vertex(100 + 15 * 2, 300 +  5 * 2);
    vertex(100 + 20 * 2, 300 +  5 * 2);
    vertex(100 + 20 * 2, 300 + 10 * 2);
    vertex(100 + 25 * 2, 300 + 10 * 2);
    vertex(100 + 25 * 2, 300 - 10 * 2);
    vertex(100 + 20 * 2, 300 - 10 * 2);
    vertex(100 + 20 * 2, 300 -  5 * 2);
    vertex(100 + 15 * 2, 300 -  5 * 2);
    vertex(100 + 15 * 2, 300 - 15 * 2);
    endShape(CLOSE);  
    fill(250, 211, 134);
    rect(100, 300, 30 * 2, 30 * 2);
    fill(255);
    textSize(50);
    text("500kcal", 170, 320);
  
    // パン
    fill(240, 221, 124);
    ellipse(100, 440, 50 * 2, 30 * 2);
    fill(255);
    ellipse(100 - 13 * 2, 440, 5 * 2, 20 * 2);
    ellipse(100 + 13 * 2, 440, 5 * 2, 20 * 2);
    ellipse(100, 440, 5 * 2, 20 * 2);
    fill(255);
    textSize(50);
    text("300kcal", 170, 460);
    
    // どくろ
    noStroke();
    fill(222, 219, 219);
    rect(100, 570 + 10 * 2, 20 * 2, 25 * 2);
    ellipse(100, 570, 40 * 2, 3 * 25);
    fill(0);
    ellipse(100 - 10 * 2, 570, 10 * 2, 16 * 2);
    ellipse(100 + 10 * 2, 570, 10 * 2, 16 * 2);
    stroke(0);
    strokeWeight(2);
    line(100 - 4 * 2, 570 + 15 * 2, 100 - 4 * 2, 570 + 22 * 2);
    line(100 + 4 * 2, 570 + 15 * 2, 100 + 4 * 2, 570 + 22 * 2);
    fill(255);
    textSize(45);
    text("-1500kcal", 145, 590);
   
    // 題名
    fill(121, 35, 47);
    rect(x1, y1 - 58 * 5, 100 * 5, 40 * 5);
    fill(250, 66, 112);
    textSize(120);
    text("Franken", 395, 106);
    text("Mouth", 437, 200);
    
    // スタート
    fill(250, 66, 112);
    textSize(60);
    text("START", 534, 560);
    
    // 最高得点の表示
    fill(121, 35, 47);
    rect(1060, 400, 340, 250);
    fill(255);
    textSize(40);
    text("MAX POINT", 926, 350);
    textSize(80);
    if (count2 < count) {
      count2 = count;
    }
    text(""+str(count2), 930, 455);
    
    break;
  
    // ゲーム画面の操作
    case 1:
    // 背景 神戸タワーと建物
    background(121, 106, 131);
    noStroke();
    fill(220, 236, 247, 140);
    ellipse(1100, 100, 180, 60);
    ellipse(1140, 60, 160, 60);
    fill(240, 92, 93);
    ellipse(1000, 190, 300, 300);
    fill(220, 236, 247, 145);
    ellipse(850, 300, 200, 70);
    ellipse(920, 260, 160, 60);
    fill(165, 162, 162);
    rect(200, 560, 70, 130);
    rect(170, 600, 100, 60);
    rect(570, 570, 70, 110);
    rect(495, 580, 60, 105);
    fill(245, 233, 94);
    rect(185, 520, 15, 15);
    rect(215, 520, 15, 15);
    rect(185, 545, 15, 15);
    rect(215, 545, 15, 15);
    rect(185, 570, 15, 15);
    rect(215, 570, 15, 15);
    rect(555, 540, 15, 15);
    rect(585, 540, 15, 15);
    rect(555, 565, 15, 15);
    rect(585, 565, 15, 15);
    rect(481, 555, 15, 15);
    rect(509, 555, 15, 15);
    rect(481, 585, 15, 15);
    rect(509, 585, 15, 15);
    fill(82, 75, 76);
    rect(385, 560, 25, 150);
    fill(255);
    beginShape();
    vertex(360, 440);
    vertex(360, 450);
    vertex(370, 510);
    vertex(400, 510);
    vertex(410, 450);
    vertex(410, 440);
    vertex(360, 440);
    endShape();
    stroke(247, 17, 37);
    strokeWeight(3);
    line(360, 450, 410, 450);
    line(370, 450, 425, 625);    
    line(380, 450, 425, 625);
    line(360, 450, 425, 625);    
    line(360, 450, 409, 625);
    line(360, 450, 393, 625);
    line(370, 450, 409, 625);
    line(380, 450, 393, 625);
    line(390, 450, 377, 625);
    line(400, 450, 361, 625);
    line(410, 450, 377, 625);
    line(410, 450, 361, 625);    
    line(410, 450, 345, 625);
    line(400, 450, 345, 625);
    line(390, 450, 345, 625);
    
    stroke(0); 
    // 顔の輪郭 & ボルト
    if( count >= 10000 )
    {
      fill(193, 183, 183);
      strokeWeight(2);
      rect(mouseX, mouseY + 10 * 1.5, 74 * 1.5, 6 * 1.5);
      rect(mouseX + 36 * 1.5, mouseY + 10 * 1.5, 5 * 1.5, 14 * 1.5);
    }
    fill(193, 183, 183);
    strokeWeight(2);
    rect(mouseX, mouseY - 14 * 1.5, 74 * 1.5, 6 * 1.5);
    rect(mouseX + 36 * 1.5, mouseY - 14 * 1.5, 5 * 1.5, 14 * 1.5);
    fill(211, 196, 117);
    beginShape();
    vertex(mouseX - 30 * 1.5, mouseY - 30 * 1.5);
    vertex(mouseX - 30 * 1.5, mouseY + 30 * 1.5);
    vertex(mouseX - 25 * 1.5, mouseY + 40 * 1.5);
    vertex(mouseX - 25 * 1.5, mouseY + 50 * 1.5);
    vertex(mouseX -  8 * 1.5, mouseY + 50 * 1.5);
    vertex(mouseX -  8 * 1.5, mouseY + 54 * 1.5);
    vertex(mouseX +  8 * 1.5, mouseY + 54 * 1.5);
    vertex(mouseX +  8 * 1.5, mouseY + 50 * 1.5);
    vertex(mouseX + 25 * 1.5, mouseY + 50 * 1.5);
    vertex(mouseX + 25 * 1.5, mouseY + 40 * 1.5);
    vertex(mouseX + 30 * 1.5, mouseY + 30 * 1.5);
    vertex(mouseX + 30 * 1.5, mouseY - 30 * 1.5);
    vertex(mouseX - 30 * 1.5, mouseY - 30 * 1.5);
    endShape();
    line(mouseX, mouseY + 51 * 1.5, mouseX, mouseY + 54 * 1.5);
    strokeWeight(1);
    line(mouseX - 25 * 1.5, mouseY - 3 * 1.5, mouseX - 28 * 1.5, mouseY +  3 * 1.5);
    line(mouseX - 28 * 1.5, mouseY + 3 * 1.5, mouseX - 25 * 1.5, mouseY +  9 * 1.5);
    line(mouseX - 25 * 1.5, mouseY + 9 * 1.5, mouseX - 25 * 1.5, mouseY + 22 * 1.5);
    line(mouseX + 25 * 1.5, mouseY - 3 * 1.5, mouseX + 28 * 1.5, mouseY +  3 * 1.5);
    line(mouseX + 28 * 1.5, mouseY + 3 * 1.5, mouseX + 25 * 1.5, mouseY +  9 * 1.5);
    line(mouseX + 25 * 1.5, mouseY + 9 * 1.5, mouseX + 25 * 1.5, mouseY + 22 * 1.5);
  
    // 耳
    strokeWeight(2);
    rect(mouseX - 31.5 * 1.5, mouseY, 3 * 1.5, 12 * 1.5);
    rect(mouseX + 31.5 * 1.5, mouseY, 3 * 1.5, 12 * 1.5);
  
    // 髪
    fill(0);
    beginShape();
    vertex(mouseX - 30 * 1.5, mouseY - 30 * 1.5);
    vertex(mouseX - 30 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX - 25 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX - 20 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX - 15 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX - 10 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX -  5 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX +  0 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX +  5 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX + 10 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX + 15 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX + 20 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX + 25 * 1.5, mouseY - 15 * 1.5);
    vertex(mouseX + 30 * 1.5, mouseY - 20 * 1.5);
    vertex(mouseX + 30 * 1.5, mouseY - 30 * 1.5);
    endShape();
  
    // 口
    strokeWeight(1);
    fill(121, 35, 47);
    rect(mouseX, mouseY + 28 * 1.5, 44 * 1.5, 38 * 1.5);
    
    // 鼻
    line(mouseX - 3 * 1.5, mouseY - 6 * 1.5, mouseX + 3 * 1.5, mouseY - 6 * 1.5);
    line(mouseX - 3 * 1.5, mouseY + 6 * 1.5, mouseX + 3 * 1.5, mouseY + 6 * 1.5);
    line(mouseX - 3 * 1.5, mouseY - 6 * 1.5, mouseX - 3 * 1.5, mouseY + 3 * 1.5);
    line(mouseX + 3 * 1.5, mouseY - 6 * 1.5, mouseX + 3 * 1.5, mouseY + 3 * 1.5);
    line(mouseX - 3 * 1.5, mouseY - 6 * 1.5, mouseX - 5 * 1.5, mouseY + 2 * 1.5);
    line(mouseX + 3 * 1.5, mouseY - 6 * 1.5, mouseX + 5 * 1.5, mouseY + 2 * 1.5);
    line(mouseX - 3 * 1.5, mouseY + 6 * 1.5, mouseX - 5 * 1.5, mouseY + 2 * 1.5);
    line(mouseX + 3 * 1.5, mouseY + 6 * 1.5, mouseX + 5 * 1.5, mouseY + 2 * 1.5);
    line(mouseX - 3 * 1.5, mouseY - 7 * 1.5, mouseX + 3 * 1.5, mouseY - 7 * 1.5);
    
    // 目
    fill(255);
    rect(mouseX - 11 * 1.5, mouseY - 4 * 1.5, 10 * 1.5, 5 * 1.5);
    rect(mouseX + 11 * 1.5, mouseY - 4 * 1.5, 10 * 1.5, 5 * 1.5);
    line(mouseX - 18 * 1.5, mouseY - 7 * 1.5, mouseX -  5 * 1.5, mouseY -  7 * 1.5);
    line(mouseX + 18 * 1.5, mouseY - 7 * 1.5, mouseX +  5 * 1.5, mouseY -  7 * 1.5);
    line(mouseX - 18 * 1.5, mouseY - 7 * 1.5, mouseX - 18 * 1.5, mouseY - 11 * 1.5);
    line(mouseX -  5 * 1.5, mouseY - 7 * 1.5, mouseX -  5 * 1.5, mouseY - 11 * 1.5);
    line(mouseX + 18 * 1.5, mouseY - 7 * 1.5, mouseX + 18 * 1.5, mouseY - 11 * 1.5);
    line(mouseX +  5 * 1.5, mouseY - 7 * 1.5, mouseX +  5 * 1.5, mouseY - 11 * 1.5);
   
   // カロリーが増えると目の色が変わる
    if( count >= 10000 )
   {
     fill(255, 60, 20);
     rect(mouseX - 11 * 1.5, mouseY - 4 * 1.5, 11 * 1.5, 6 * 1.5);
     rect(mouseX + 11 * 1.5, mouseY - 4 * 1.5, 11 * 1.5, 6 * 1.5);
   }
    if( count >= 100000)
   {
     fill(20, 60, 255);
     rect(mouseX - 11 * 1.5, mouseY - 4 * 1.5, 11 * 1.5, 6 * 1.5);
     rect(mouseX + 11 * 1.5, mouseY - 4 * 1.5, 11 * 1.5, 6 * 1.5);
   }
    
    // ランダムに落下する操作
    if(y2[0] < -140)
    {
      x2[0] += random(-300, 300);
      x2[0] = constrain(x2[0], 25, 1225);
    } 
    if(y2[1] < -30)
    {
      x2[1] += random(-300, 300);
      x2[1] = constrain(x2[1], 25, 1225);
    }   
    if(y2[2] < -190)
    {
      x2[2] += random(-300, 300);
      x2[2] = constrain(x2[2], 25, 1225);
    }
    
    // 落下スピードに値
    y2[0] += 1.5 + speed[0];
    y2[1] += 1.5 + speed[1];
    y2[2] += 1.8 + speed[2];
    
    // どくろが下に落ちたら上に上がるように
    if(y2[2] > 650)
    {
      y2[2] = -250;
    }
    
    // 肉
    fill(255);
    beginShape();
    vertex(x2[0] - 15, y2[0] - 15);
    vertex(x2[0] - 15, y2[0] -  5);
    vertex(x2[0] - 20, y2[0] -  5);
    vertex(x2[0] - 20, y2[0] - 10);
    vertex(x2[0] - 25, y2[0] - 10);
    vertex(x2[0] - 25, y2[0] + 10);
    vertex(x2[0] - 20, y2[0] + 10);
    vertex(x2[0] - 20, y2[0] +  5);
    vertex(x2[0] - 15, y2[0] +  5);
    vertex(x2[0] - 15, y2[0] + 15);
    vertex(x2[0] + 15, y2[0] + 15);
    vertex(x2[0] + 15, y2[0] +  5);
    vertex(x2[0] + 20, y2[0] +  5);
    vertex(x2[0] + 20, y2[0] + 10);
    vertex(x2[0] + 25, y2[0] + 10);
    vertex(x2[0] + 25, y2[0] - 10);
    vertex(x2[0] + 20, y2[0] - 10);
    vertex(x2[0] + 20, y2[0] -  5);
    vertex(x2[0] + 15, y2[0] -  5);
    vertex(x2[0] + 15, y2[0] - 15);
    endShape(CLOSE);  
    fill(250, 211, 134);
    rect(x2[0], y2[0], 30, 30);
    
    // パン
    fill(240, 221, 124);
    ellipse(x2[1], y2[1], 50, 30);
    fill(255);
    ellipse(x2[1] - 13, y2[1], 5, 20);
    ellipse(x2[1] + 13, y2[1], 5, 20);
    ellipse(x2[1], y2[1], 5, 20);
    
    // カロリーが５０００を超えると、どくろ追加
    if( count >= 5000 )
    {
      noStroke();
      fill(222, 219, 219);
      rect(x2[2], y2[2] + 10, 20, 25);
      ellipse(x2[2], y2[2], 40, 35);
      fill(0);
      ellipse(x2[2] - 10, y2[2], 10, 16);
      ellipse(x2[2] + 10, y2[2], 10, 16);
      stroke(0);
      strokeWeight(2);
      line(x2[2] - 4, y2[2] + 15, x2[2] - 4, y2[2] + 22);
      line(x2[2] + 4, y2[2] + 15, x2[2] + 4, y2[2] + 22);
    }
      
     
    // kcal
    fill(121, 35, 47);
    textSize(30);
    text("kcal:"+str(count), w, 610);
    if (w < -60)
    {
      w = width;
    } else 
    {
      w -= 1.5;
    }
  
    // 肉を食べると上に戻り、カロリー上昇
    if(( x2[0] - 15 < mouseX ) & ( mouseX < x2[0] + 15 ))
    {
      if(( y2[0] - 60 < mouseY ) & ( mouseY < y2[0] - 30 ) & ( mouseY < 615 ))
      {
        count += 500;
        y2[0] = -180;
        speed[0] += 0.1;
        fill(211, 196, 117);
        noStroke();
        rect(mouseX, mouseY + 28 * 1.5, 44 * 1.5, 38 * 1.5);
        line(mouseX - 30, mouseY + 70, mouseX + 30, mouseY + 70);
      }
    }
    
    // パンを食べると上に戻り、カロリー上昇
    if(( x2[1] - 15 < mouseX ) & ( mouseX < x2[1] + 15 ))
    {
      if(( y2[1] - 60 < mouseY ) & ( mouseY < y2[1] - 30 ) & ( mouseY < 615 ))
      {
        count += 300;
        y2[1] = -60;
        speed[1] += 0.1;
        fill(211, 196, 117);
        noStroke();
        rect(mouseX, mouseY + 28 * 1.5, 44 * 1.5, 38 * 1.5);
        line(mouseX - 30, mouseY + 70, mouseX + 30, mouseY + 70);
      }
    }
    
    // どくろを食べるとー１５００
    if(( x2[2] - 15 < mouseX ) & ( mouseX < x2[2] + 15 ) & ( count >= 5000 ))
    {
      if(( y2[2] - 60 < mouseY ) & ( mouseY < y2[2] - 30 ) & ( mouseY < 615 ))
      {
        count -= 1500;
        y2[2] = -250;
        fill(211, 196, 117);
        noStroke();
        rect(mouseX, mouseY + 28 * 1.5, 44 * 1.5, 38 * 1.5);
        line(mouseX - 30, mouseY + 70, mouseX + 30, mouseY + 70);
      }
    }
    noStroke();
    
    // 食べ物が枠外に出ると、GAME OVERと表示される
    if(( y2[0] > 635 ) & ( y2[1] > 635 ))
    {
      fill(133, 98, 250);
      textSize(200);
      text("GAME OVER", 60, 360);
      fill(0, 100);
      rect(600, 300, 1400, 650);
      y2[2] = -100;
    }
    
    // タイトルとリトライのボタン
    fill(90, 84, 12);
    rect(600, 665, 1300, 80);    
    textSize(30);
    fill(121, 35, 47);
    rect(1160, 665, 110, 35);
    fill(250, 66, 112);
    text("TITLE→", 1110, 678);   
    textSize(30);
    fill(121, 35, 47);
    rect(90, 665, 110, 35);
    fill(250, 66, 112);
    text("RETRY", 47, 678);  
    
    // 背景　墓と手
    fill(95, 92, 93);
    rect(1000, 580, 30, 150);
    rect(1000, 550, 100, 25);
    fill(211, 196, 117);
    rect(970, 640, 15, 60);
    rect(970, 610, 22, 18);
    rect(960, 600, 4, 16);
    rect(967, 600, 4, 22);
    rect(974, 600, 4, 24);
    rect(981, 600, 4, 22);
    rect(990, 613, 18, 8);
    fill(118, 61, 2);
    rect(990, 660, 9, 9);
    rect(985, 665, 5, 5);
    rect(960, 650, 10, 10);
    rect(975, 645, 5, 5);
    rect(975, 605, 5, 5);
    rect(949, 595, 5, 5);
    rect(970, 670, 10, 10);
    rect(965, 665, 5, 5);
    rect(960, 675, 10, 10);
    rect(965, 665, 5, 5);
    rect(980, 675, 10, 10);
    rect(985, 665, 5, 5);
  }
  stroke(0);
  
}
