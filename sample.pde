
float x = 240.0, y = 240.0; // 円の中心のX座標とY座標
float diameter = 30.0; // 円の直径
float vx = 2.0, vy = 3.0; // 円の中心におけるX座標とY座標の位置の変化
float rect_w1 = 100, rect_h1 = 40; // マウスカーソルで操作する長方形の横と縦の長さ
float rect_w2, rect_h2;

void setup()
{
  size(480, 480);
  textSize(50);
}

void draw()
{
  background((x / 480.0) * 255.0, (mouseX / 480.0) * 255.0, (y / 480.0) * 255.0);
  fill(255);
  noStroke();
  text("KONAN", x - 53, y +18);
  ellipse(x, y, diameter, diameter);
  
  // 右の壁に当たった場合、方向を変える
  if ((x + diameter / 2.0) > width )
  {
    vx = -vx;
  }
  
  // 左の壁に当たった場合、方向を変える
  if ((x - diameter / 2.0) < 0.0)
  {
    vx = -vx;
  }
  
  // 下の壁に当たった場合、方向を変える
  if ((y + diameter / 2.0) > height )
  {
    vy = -vy;
  }
  
  // 上の壁に当たった場合、方向を変える
  if ((y - diameter / 2.0) < 0.0 )
  {
    vy = -vy;
  }
  
  // マウスで位置を操作することが可能な長方形
  //右クリックしたら、長方形の縦と横が入れ替わる
  rect_w2 = rect_h1;
  rect_h2 = rect_w1;
  if (mouseButton == RIGHT)
  {
    rect(mouseX, mouseY, rect_w2, rect_h2);
  } else 
  {
    rect(mouseX, mouseY, rect_w1, rect_h1);
  }
  
  // ボールが下から上へ移動し、長方形の下部に当たると縦方向の方向を変える
  if (mouseButton == LEFT)
  { 
    if (vy < 0.0 && mouseY + rect_h1 < y)
   {
      if ((y - diameter / 2.0 < mouseY + rect_h1) && (mouseX < x) && (x < mouseX + rect_w1))
     {
      vy = -vy;
     }     
    }
  }
  
  // ボールが上から下へ移動し、長方形の上部に当たると縦方向の方向を変える
  if (mouseButton == LEFT)
  {
    if (vy > 0.0 && mouseY > y)
    {
      if ((y + diameter / 2.0 > mouseY) && (mouseX < x) && (x < mouseX + rect_w1))
     {
      vy = -vy;
     }
    }
  }
  
  // ボールが左から右へ移動し、長方形の左部に当たると横方向の方向を変える
  if (mouseButton == RIGHT)
  {
    if (vx > 0.0 && mouseX > x)
    {
      if ((x + diameter / 2.0 > mouseX) && (mouseY < y) && (y < mouseY + rect_w1))
     {
      vx = -vx;
     }
    }
  }
    
   // ボールが右から左へ移動し、長方形の右部に当たると横方向の方向を変える
  if (mouseButton == RIGHT)
  {
    if (vx < 0.0 && mouseX + rect_h1 < x)
    {
      if ((x - diameter / 2.0 < mouseX + rect_h1) && (mouseY < y) && (y < mouseY + rect_w1))
     {
      vx = -vx;
     }     
    }
  }
  
  x += vx;
  y += vy;
}
