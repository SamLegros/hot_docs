import controlP5.*;
ControlP5 gui;

PImage hot;
PImage tech;
PImage trad;
PImage connect;
PImage bubble;
PImage mini;
PImage seat_red; 
PImage seat_red_empty;
PImage seat_orange;
PImage seat_orange_empty;
PImage seat_blue; 
PImage seat_blue_empty; 
PImage title;
PImage watchintheatre_img;
PImage watchinfestival_img;
PImage watchinahome_img;
PImage docviewertypes_img;
PImage mapcanada_img;
PImage opener;


int docState;
int INTRO =0; 
int INTRO2 =1;
int SCREEN1 =2;
int SCREEN2 =3;
int SCREEN3 =4;
int SCREEN4 =5;
int SCREEN5 =6;
int SCREEN6 =7;


boolean text = true;

int a = 310;
int b = 352;
int c = 394;
int d = 436;
int e = 478;
int f = 520;
int g = 562;
int h = 604;
int i = 646;
int j = 688;
int k = 730;
int l = 772;
int m = 814;
int n = 856;
int o = 898;
int p = 940;
int q = 982;
int r = 1024;
int s = 1066;
int t = 1108;
int u = 1150;

void setup() {
  size(1160, 720);
  background(38, 40, 30); 
  docState = INTRO; 

  gui = new ControlP5(this);


  PFont pfont = createFont("Impact", 20, true); // use true/false for smooth/no-smooth
  ControlFont font = new ControlFont(pfont, 241);

  gui.addButton("Willing to Pay ?")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 10)
                .setSize(280, 80)
                  .setId(2);




  gui.getController("Willing to Pay ?")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;

  gui.addButton("Watch in a Theatre ?")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 100)
                .setSize(280, 80)
                  .setId(2);

  gui.getController("Watch in a Theatre ?")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;

  gui.addButton("Watch at a Festival ?")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 190)
                .setSize(280, 80)
                  .setId(2);

  gui.getController("Watch at a Festival ?")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;

  gui.addButton("Watch at Home ?")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 280)
                .setSize(280, 80)
                  .setId(2);

  gui.getController("Watch at Home ?")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;
  gui.addButton("Types of Fans ?")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 370)
                .setSize(280, 80)
                  .setId(2);

  gui.getController("Types of Fans ?")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;

  gui.addButton("Fans Based on Region")
    .setColorValue(color(255))
      .setColorActive(color(155))
        .setColorForeground(color(155))
          .setColorBackground(color(167, 198, 43))
            .setValue(0)
              .setPosition(10, 460)
                .setSize(280, 80)
                  .setId(2);

  gui.getController("Fans Based on Region")
    .getCaptionLabel()
      .setFont(font)
        .toUpperCase(false)
          .setSize(20)
            .align(ControlP5.CENTER, ControlP5.CENTER)
              ;


  noStroke();


  seat_red = loadImage("seat_red.png"); 
  seat_red_empty = loadImage("seat_red_empty.png");
  seat_orange = loadImage("seat_orange.png");
  seat_orange_empty = loadImage("seat_orange_empty.png");
  seat_blue = loadImage("seat_blue.png"); 
  seat_blue_empty = loadImage("seat_blue_empty.png"); 

  title = loadImage("title.jpg");
  watchintheatre_img = loadImage("watchintheatre.jpg");
  watchinfestival_img = loadImage("watchinfestival.jpg");
  watchinahome_img = loadImage("watchinahome.jpg");
  docviewertypes_img = loadImage("docviewertypes.png");
  mapcanada_img = loadImage("mapcanada.png");
  opener = loadImage("opener.jpg");
  mini = loadImage("mini.jpg");
  bubble = loadImage("bubble.png");
  tech = loadImage("tech.png");
  trad = loadImage("trad.png");
  connect =loadImage("connect.png");
  hot = loadImage("hot.jpg");
}

void draw() {
  println (mouseX +"," + mouseY);



  if ( docState == INTRO ) {  
    intro();
  }
  if ( docState == INTRO2 ) {  
    intro2();
  }
  if ( docState == SCREEN1 ) {  
    s1();
  }
  if ( docState == SCREEN2 ) {  
    s2();
  }
  if ( docState == SCREEN3 ) {  
    s3();
  }
  if ( docState == SCREEN4 ) {  
    s4();
  }
  if ( docState == SCREEN5 ) {  
    s5();
  }
  if ( docState == SCREEN6 ) {  
    s6();
  }
}

/////////////////////////////////////////////////////////////////////////////

void intro() {
  background(255);
  image(hot, 30, 0);
  PFont pfont = createFont("Arial", 30, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Welcome to the HotDocs Interactive Data Driven Narrative", 345, 450);
  text("Click Here To Begin", 860, 690);


  gui.getController("Willing to Pay ?")
    .setVisible(false);
  gui.getController("Watch in a Theatre ?") 
    .setVisible(false);
  gui.getController("Watch at a Festival ?")
    .setVisible(false);
  gui.getController("Watch at Home ?")
    .setVisible(false);
  gui.getController("Types of Fans ?") 
    .setVisible(false);
  gui.getController("Fans Based on Region")
    .setVisible(false);
}

void intro2() {
  image(opener, 440, 51);

  image(seat_red_empty, a, 310);
  image(seat_red_empty, b, 310);
  image(seat_red_empty, c, 310);
  image(seat_red_empty, d, 310);
  image(seat_red_empty, e, 310);
  image(seat_red_empty, f, 310);
  image(seat_red_empty, g, 310);
  image(seat_red_empty, h, 310);
  image(seat_red_empty, i, 310);
  image(seat_red_empty, j, 310);
  image(seat_red_empty, k, 310);
  image(seat_red_empty, l, 310);
  image(seat_red_empty, m, 310);
  image(seat_red_empty, n, 310);
  image(seat_red_empty, o, 310);
  image(seat_red_empty, p, 310);
  image(seat_red_empty, q, 310);
  image(seat_red_empty, r, 310);
  image(seat_red_empty, s, 310);
  image(seat_red_empty, t, 310);




  image(seat_red_empty, a, 630);
  image(seat_red_empty, b, 630);
  image(seat_red_empty, c, 630);
  image(seat_red_empty, d, 630);
  image(seat_red_empty, e, 630);
  image(seat_red_empty, f, 630);
  image(seat_red_empty, g, 630);
  image(seat_red_empty, h, 630);
  image(seat_red_empty, i, 630);
  image(seat_red_empty, j, 630);
  image(seat_red_empty, k, 630);
  image(seat_red_empty, l, 630);
  image(seat_red_empty, m, 630);
  image(seat_red_empty, n, 630);
  image(seat_red_empty, o, 630);
  image(seat_red_empty, p, 630);
  image(seat_red_empty, q, 630);
  image(seat_red_empty, r, 630);
  image(seat_red_empty, s, 630);
  image(seat_red_empty, t, 630);


  PFont pfont = createFont("Arial", 30, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Hot Docs, the Canadian International Documentary Festival,", 330, 450);
  text("asked Canadians a few questions on documentary awareness.", 320, 490);
  textSize(40);
  text(" Here is what they have to say!", 450, 560);
  textSize(30);
  text("Click the options on the sidebar to view the results", 390, 630);
}





void s1() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  image(title, 440, 51);



  image(seat_red, a, 310);
  image(seat_red, b, 310);
  image(seat_red, c, 310);
  image(seat_red, d, 310);
  image(seat_red, e, 310);
  image(seat_red, f, 310);
  image(seat_red, g, 310);
  image(seat_red, h, 310);
  image(seat_red, i, 310);
  image(seat_red, j, 310);
  image(seat_red, k, 310);
  image(seat_red, l, 310);
  image(seat_red, m, 310);
  image(seat_red, n, 310);
  image(seat_red, o, 310);
  image(seat_red, p, 310);
  image(seat_red, q, 310);
  image(seat_red, r, 310);
  image(seat_red, s, 310);
  image(seat_red, t, 310);

  image(seat_red, a, 390);
  image(seat_red, b, 390);
  image(seat_red, c, 390);
  image(seat_red, d, 390);
  image(seat_red, e, 390);
  image(seat_red, f, 390);
  image(seat_red, g, 390);
  image(seat_red, h, 390);
  image(seat_red, i, 390);
  image(seat_red, j, 390);
  image(seat_red, k, 390);
  image(seat_red, l, 390);
  image(seat_red, m, 390);
  image(seat_red, n, 390);
  image(seat_red, o, 390);
  image(seat_red, p, 390);
  image(seat_red, q, 390);
  image(seat_red, r, 390);
  image(seat_red, s, 390);
  image(seat_red, t, 390);

  image(seat_red, a, 470);
  image(seat_red, b, 470);
  image(seat_red, c, 470);
  image(seat_red, d, 470);
  image(seat_red, e, 470);
  image(seat_red, f, 470);
  image(seat_red, g, 470);
  image(seat_red, h, 470);
  image(seat_red, i, 470);
  image(seat_red, j, 470);
  image(seat_red, k, 470);
  image(seat_red, l, 470);
  image(seat_red, m, 470);
  image(seat_red, n, 470);
  image(seat_red, o, 470);
  image(seat_red, p, 470);
  image(seat_red, q, 470);
  image(seat_red, r, 470);
  image(seat_red, s, 470);
  image(seat_red, t, 470);

  image(seat_red, a, 550);
  image(seat_red, b, 550);
  image(seat_red, c, 550);
  image(seat_red, d, 550);
  image(seat_red, e, 550);
  image(seat_red, f, 550);
  image(seat_red, g, 550);
  image(seat_red, h, 550);
  image(seat_red, i, 550);
  image(seat_red, j, 550);
  image(seat_red, k, 550);
  image(seat_red, l, 550);
  image(seat_red, m, 550);
  image(seat_red, n, 550);
  image(seat_red, o, 550);
  image(seat_red, p, 550);
  image(seat_red, q, 550);
  image(seat_red, r, 550);
  image(seat_red, s, 550);
  image(seat_red, t, 550);

  image(seat_red, a, 630);
  image(seat_red, b, 630);
  image(seat_red, c, 630);
  image(seat_red, d, 630);
  image(seat_red, e, 630);
  image(seat_red, f, 630);
  image(seat_red, g, 630);
  image(seat_red, h, 630);
  image(seat_red, i, 630);
  image(seat_red, j, 630);
  image(seat_red, k, 630);
  image(seat_red, l, 630);
  image(seat_red, m, 630);
  image(seat_red, n, 630);
  image(seat_red, o, 630);
  image(seat_red, p, 630);
  image(seat_red_empty, q, 630);
  image(seat_red_empty, r, 630);
  image(seat_red_empty, s, 630);
  image(seat_red_empty, t, 630);

  image(bubble, n+5, 190);
  PFont pfont = createFont("Arial", 16, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Quality and easy to find docs? ", 900, 280);
  text("Take my money!", 950, 320);
}

/////////////////////////////////////////////////////////////////////////////
void s2() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  image(watchintheatre_img, 440, 51);

  image(seat_orange, a, 310);
  image(seat_orange, b, 310);
  image(seat_orange, c, 310);
  image(seat_orange, d, 310);
  image(seat_orange, e, 310);
  image(seat_orange, f, 310);
  image(seat_orange, g, 310);
  image(seat_orange, h, 310);
  image(seat_orange, i, 310);
  image(seat_orange, j, 310);
  image(seat_orange, k, 310);
  image(seat_orange, l, 310);
  image(seat_orange, m, 310);
  image(seat_orange, n, 310);
  image(seat_orange, o, 310);
  image(seat_orange, p, 310);
  image(seat_orange, q, 310);
  image(seat_orange, r, 310);
  image(seat_orange, s, 310);
  image(seat_orange, t, 310);

  image(seat_orange, a, 390);
  image(seat_orange, b, 390);
  image(seat_orange, c, 390);
  image(seat_orange, d, 390);
  image(seat_orange, e, 390);
  image(seat_orange, f, 390);
  image(seat_orange, g, 390);
  image(seat_orange, h, 390);
  image(seat_orange, i, 390);
  image(seat_orange, j, 390);
  image(seat_orange, k, 390);
  image(seat_orange, l, 390);
  image(seat_orange, m, 390);
  image(seat_orange, n, 390);
  image(seat_orange, o, 390);
  image(seat_orange, p, 390);
  image(seat_orange, q, 390);
  image(seat_orange, r, 390);
  image(seat_orange, t, 390);
  image(seat_orange, s, 390);

  image(seat_orange, a, 470);
  image(seat_orange, b, 470);
  image(seat_orange, c, 470);
  image(seat_orange, d, 470);
  image(seat_orange, e, 470);
  image(seat_orange, f, 470);
  image(seat_orange, g, 470);
  image(seat_orange, h, 470);
  image(seat_orange, i, 470);
  image(seat_orange, j, 470);
  image(seat_orange, k, 470);
  image(seat_orange, l, 470);
  image(seat_orange, m, 470);
  image(seat_orange, n, 470);
  image(seat_orange, o, 470);
  image(seat_orange, p, 470);
  image(seat_orange, q, 470);
  image(seat_orange, r, 470);
  image(seat_orange, s, 470);
  image(seat_orange, t, 470);

  image(seat_orange, a, 550);
  image(seat_orange, b, 550);
  image(seat_orange, c, 550);
  image(seat_orange, d, 550);
  image(seat_orange, e, 550);
  image(seat_orange, f, 550);
  image(seat_orange, g, 550);
  image(seat_orange, h, 550);
  image(seat_orange, i, 550);
  image(seat_orange, j, 550);
  image(seat_orange_empty, k, 550);
  image(seat_orange_empty, l, 550);
  image(seat_orange_empty, m, 550);
  image(seat_orange_empty, n, 550);
  image(seat_orange_empty, o, 550);
  image(seat_orange_empty, p, 550);
  image(seat_orange_empty, q, 550);
  image(seat_orange_empty, r, 550);
  image(seat_orange_empty, s, 550);
  image(seat_orange_empty, t, 550);

  image(seat_orange_empty, a, 630);
  image(seat_orange_empty, b, 630);
  image(seat_orange_empty, c, 630);
  image(seat_orange_empty, d, 630);
  image(seat_orange_empty, e, 630);
  image(seat_orange_empty, f, 630);
  image(seat_orange_empty, g, 630);
  image(seat_orange_empty, h, 630);
  image(seat_orange_empty, i, 630);
  image(seat_orange_empty, j, 630);
  image(seat_orange_empty, k, 630);
  image(seat_orange_empty, l, 630);
  image(seat_orange_empty, m, 630);
  image(seat_orange_empty, n, 630);
  image(seat_orange_empty, o, 630);
  image(seat_orange_empty, p, 630);
  image(seat_orange_empty, q, 630);
  image(seat_orange_empty, r, 630);
  image(seat_orange_empty, s, 630);
  image(seat_orange_empty, t, 630);

  image(bubble, c+5, 190);
  PFont pfont = createFont("Arial", 16, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Nothing better then watching  ", 440, 260);
  text("my fav Docs on the ", 475, 280);
  text(" BIG SCREEN", 490, 310);
}
/////////////////////////////////////////////////////////////////////////////
void s3() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  image(watchinfestival_img, 440, 51);

  image(seat_blue, a, 310);
  image(seat_blue, b, 310);
  image(seat_blue, c, 310);
  image(seat_blue, d, 310);
  image(seat_blue, e, 310);
  image(seat_blue, f, 310);
  image(seat_blue, g, 310);
  image(seat_blue, h, 310);
  image(seat_blue, i, 310);
  image(seat_blue, j, 310);
  image(seat_blue, k, 310);
  image(seat_blue, l, 310);
  image(seat_blue, m, 310);
  image(seat_blue, n, 310);
  image(seat_blue, o, 310);
  image(seat_blue, p, 310);
  image(seat_blue, q, 310);
  image(seat_blue, r, 310);
  image(seat_blue, s, 310);
  image(seat_blue, t, 310);

  image(seat_blue, a, 390);
  image(seat_blue, b, 390);
  image(seat_blue, c, 390);
  image(seat_blue, d, 390);
  image(seat_blue, e, 390);
  image(seat_blue, f, 390);
  image(seat_blue, g, 390);
  image(seat_blue, h, 390);
  image(seat_blue, i, 390);
  image(seat_blue, j, 390);
  image(seat_blue, k, 390);
  image(seat_blue, l, 390);
  image(seat_blue, m, 390);
  image(seat_blue, n, 390);
  image(seat_blue, o, 390);
  image(seat_blue, p, 390);
  image(seat_blue, q, 390);
  image(seat_blue, r, 390);
  image(seat_blue, t, 390);
  image(seat_blue, s, 390);

  image(seat_blue, a, 470);
  image(seat_blue, b, 470);
  image(seat_blue, c, 470);
  image(seat_blue, d, 470);
  image(seat_blue, e, 470);
  image(seat_blue, f, 470);
  image(seat_blue, g, 470);
  image(seat_blue, h, 470);
  image(seat_blue, i, 470);
  image(seat_blue, j, 470);
  image(seat_blue, k, 470);
  image(seat_blue, l, 470);
  image(seat_blue, m, 470);
  image(seat_blue, n, 470);
  image(seat_blue, o, 470);
  image(seat_blue, p, 470);
  image(seat_blue, q, 470);
  image(seat_blue, r, 470);
  image(seat_blue, s, 470);
  image(seat_blue, t, 470);

  image(seat_blue, a, 550);
  image(seat_blue, b, 550);
  image(seat_blue, c, 550);
  image(seat_blue, d, 550);
  image(seat_blue, e, 550);
  image(seat_blue, f, 550);
  image(seat_blue, g, 550);
  image(seat_blue, h, 550);
  image(seat_blue, i, 550);
  image(seat_blue, j, 550);
  image(seat_blue, k, 550);
  image(seat_blue, l, 550);
  image(seat_blue, m, 550);
  image(seat_blue, n, 550);
  image(seat_blue, o, 550);
  image(seat_blue, p, 550);
  image(seat_blue, q, 550);
  image(seat_blue, r, 550);
  image(seat_blue, s, 550);
  image(seat_blue, t, 550);

  image(seat_blue, a, 630);
  image(seat_blue, b, 630);
  image(seat_blue, c, 630);
  image(seat_blue_empty, d, 630);
  image(seat_blue_empty, e, 630);
  image(seat_blue_empty, f, 630);
  image(seat_blue_empty, g, 630);
  image(seat_blue_empty, h, 630);
  image(seat_blue_empty, i, 630);
  image(seat_blue_empty, j, 630);
  image(seat_blue_empty, k, 630);
  image(seat_blue_empty, l, 630);
  image(seat_blue_empty, m, 630);
  image(seat_blue_empty, n, 630);
  image(seat_blue_empty, o, 630);
  image(seat_blue_empty, p, 630);
  image(seat_blue_empty, q, 630);
  image(seat_blue_empty, r, 630);
  image(seat_blue_empty, s, 630);
  image(seat_blue_empty, t, 630);

  image(bubble, d+8, 355);
  PFont pfont = createFont("Arial", 16, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Festivals are great for   ", 515, 420);
  text("discovering new docs ", 515, 440);
  text(" and sharing  them ", 530, 460);
  text(" with others around you!", 512, 480);
}
/////////////////////////////////////////////////////////////////////////////
void s4() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  image(watchinahome_img, 440, 51);

  image(seat_red, a, 310);
  image(seat_red, b, 310);
  image(seat_red, c, 310);
  image(seat_red, d, 310);
  image(seat_red, e, 310);
  image(seat_red, f, 310);
  image(seat_red, g, 310);
  image(seat_red, h, 310);
  image(seat_red, i, 310);
  image(seat_red, j, 310);
  image(seat_red, k, 310);
  image(seat_red, l, 310);
  image(seat_red, m, 310);
  image(seat_red, n, 310);
  image(seat_red, o, 310);
  image(seat_red, p, 310);
  image(seat_red, q, 310);
  image(seat_red, r, 310);
  image(seat_red, s, 310);
  image(seat_red, t, 310);

  image(seat_red, a, 390);
  image(seat_red, b, 390);
  image(seat_red, c, 390);
  image(seat_red, d, 390);
  image(seat_red, e, 390);
  image(seat_red, f, 390);
  image(seat_red, g, 390);
  image(seat_red, h, 390);
  image(seat_red, i, 390);
  image(seat_red, j, 390);
  image(seat_red, k, 390);
  image(seat_red, l, 390);
  image(seat_red, m, 390);
  image(seat_red, n, 390);
  image(seat_red, o, 390);
  image(seat_red, p, 390);
  image(seat_red, q, 390);
  image(seat_red, r, 390);
  image(seat_red, s, 390);
  image(seat_red, t, 390);

  image(seat_red, a, 470);
  image(seat_red, b, 470);
  image(seat_red, c, 470);
  image(seat_red, d, 470);
  image(seat_red, e, 470);
  image(seat_red, f, 470);
  image(seat_red, g, 470);
  image(seat_red, h, 470);
  image(seat_red, i, 470);
  image(seat_red, j, 470);
  image(seat_red, k, 470);
  image(seat_red, l, 470);
  image(seat_red, m, 470);
  image(seat_red, n, 470);
  image(seat_red, o, 470);
  image(seat_red, p, 470);
  image(seat_red, q, 470);
  image(seat_red, r, 470);
  image(seat_red, s, 470);
  image(seat_red, t, 470);

  image(seat_red, a, 550);
  image(seat_red, b, 550);
  image(seat_red, c, 550);
  image(seat_red, d, 550);
  image(seat_red, e, 550);
  image(seat_red, f, 550);
  image(seat_red, g, 550);
  image(seat_red, h, 550);
  image(seat_red, i, 550);
  image(seat_red, j, 550);
  image(seat_red, k, 550);
  image(seat_red, l, 550);
  image(seat_red, m, 550);
  image(seat_red, n, 550);
  image(seat_red, o, 550);
  image(seat_red, p, 550);
  image(seat_red, q, 550);
  image(seat_red, r, 550);
  image(seat_red, s, 550);
  image(seat_red, t, 550);

  image(seat_red, a, 630);
  image(seat_red, b, 630);
  image(seat_red, c, 630);
  image(seat_red, d, 630);
  image(seat_red, e, 630);
  image(seat_red, f, 630);
  image(seat_red, g, 630);
  image(seat_red, h, 630);
  image(seat_red, i, 630);
  image(seat_red, j, 630);
  image(seat_red, k, 630);
  image(seat_red, l, 630);
  image(seat_red, m, 630);
  image(seat_red, n, 630);
  image(seat_red, o, 630);
  image(seat_red_empty, p, 630);
  image(seat_red_empty, q, 630);
  image(seat_red_empty, r, 630);
  image(seat_red_empty, s, 630);
  image(seat_red_empty, t, 630);

  image(bubble, a+6, 194);
  PFont pfont = createFont("Arial", 16, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Nothing better than the", 375, 260);
  text("comfort of your own home", 365, 280);
  text(" to acompany your", 390, 300);
  text("favourite Doc!", 410, 320);
}

/////////////////////////////////////////////////////////////////////////////
void s5() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  PFont pfont = createFont("Arial", 40, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Types of Documentary Fans!", 450, 40);

  image(seat_red, a, 310);
  image(seat_red, b, 310);
  image(seat_red, c, 310);
  image(seat_red, d, 310);
  image(seat_red, e, 310);
  image(seat_red, f, 310);
  image(seat_red, g, 310);
  image(seat_red, h, 310);
  image(seat_red, i, 310);
  image(seat_red, j, 310);
  image(seat_red, k, 310);
  image(seat_red, l, 310);
  image(seat_red, m, 310);
  image(seat_red, n, 310);
  image(seat_red, o, 310);
  image(seat_red, p, 310);
  image(seat_red, q, 310);
  image(seat_red, r, 310);
  image(seat_red, s, 310);
  image(seat_red, t, 310);

  image(seat_red, a, 390);
  image(seat_red, b, 390);
  image(seat_red, c, 390);
  image(seat_red, d, 390);
  image(seat_red, e, 390);
  image(seat_red, f, 390);
  image(seat_red, g, 390);
  image(seat_red, h, 390);
  image(seat_red, i, 390);
  image(seat_red, j, 390);
  image(seat_red, k, 390);
  image(seat_red, l, 390);
  image(seat_red, m, 390);
  image(seat_red, n, 390);
  image(seat_red, o, 390);
  image(seat_red, p, 390);
  image(seat_red, q, 390);
  image(seat_red, r, 390);
  image(seat_red, s, 390);
  image(seat_red, t, 390);

  image(seat_red, a, 470);
  image(seat_red, b, 470);
  image(seat_red, c, 470);
  image(seat_blue, d, 470);
  image(seat_blue, e, 470);
  image(seat_blue, f, 470);
  image(seat_blue, g, 470);
  image(seat_blue, h, 470);
  image(seat_blue, i, 470);
  image(seat_blue, j, 470);
  image(seat_blue, k, 470);
  image(seat_blue, l, 470);
  image(seat_blue, m, 470);
  image(seat_blue, n, 470);
  image(seat_blue, o, 470);
  image(seat_blue, p, 470);
  image(seat_blue, q, 470);
  image(seat_blue, r, 470);
  image(seat_blue, s, 470);
  image(seat_blue, t, 470);

  image(seat_blue, a, 550);
  image(seat_blue, b, 550);
  image(seat_blue, c, 550);
  image(seat_blue, d, 550);
  image(seat_blue, e, 550);
  image(seat_blue, f, 550);
  image(seat_blue, g, 550);
  image(seat_blue, h, 550);
  image(seat_blue, i, 550);
  image(seat_blue, j, 550);
  image(seat_blue, k, 550);
  image(seat_blue, l, 550);
  image(seat_blue, m, 550);
  image(seat_blue, n, 550);
  image(seat_blue, o, 550);
  image(seat_blue, p, 550);
  image(seat_blue, q, 550);
  image(seat_blue, r, 550);
  image(seat_blue, s, 550);
  image(seat_blue, t, 550);

  image(seat_blue, a, 630);
  image(seat_blue, b, 630);
  image(seat_blue, c, 630);
  image(seat_blue, d, 630);
  image(seat_blue, e, 630);
  image(seat_blue, f, 630);
  image(seat_orange, g, 630);
  image(seat_orange, h, 630);
  image(seat_orange, i, 630);
  image(seat_orange, j, 630);
  image(seat_orange, k, 630);
  image(seat_orange, l, 630);
  image(seat_orange, m, 630);
  image(seat_orange, n, 630);
  image(seat_orange, o, 630);
  image(seat_orange, p, 630);
  image(seat_orange, q, 630);
  image(seat_orange, r, 630);
  image(seat_orange, s, 630);
  image(seat_orange, t, 630);

  image(trad, 330, 200);
  //PFont pfont = createFont("Arial", 30, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont, 20);
  text("Traditional Fans: 14% (Orange)", 385, 255);
  image(tech, 330, 100);
  text("Connected Super Users 43% (Red)", 385, 140);
  image(connect, 700, 150);
  text("Discerning Doc Lovers 43% (Blue)", 825, 195);
}

void s6() {
  fill(255);
  rect(300, 0, 859, 719);
  rect(400, 50, 660, 250);

  image(mapcanada_img, 401, 51);
  fill(255, 100, 100, 100);
  ellipse(631, 194, 50, 50); // BC + Yukon
  ellipse(712, 226, 50, 50); // Prairies
  ellipse(785, 255, 50, 50); // Ontario
  ellipse(841, 233, 50, 50); // Quebec
  ellipse(872, 177, 50, 50); // Atlantic

  PFont pfont = createFont("Arial", 30, true); // use true/false for smooth/no-smooth
  fill(0);
  textFont(pfont);
  text("Hover over the red circles to see more info!", 450, 40);


  image(seat_red_empty, a, 310);
  image(seat_red_empty, b, 310);
  image(seat_red_empty, c, 310);
  image(seat_red_empty, d, 310);
  image(seat_red_empty, e, 310);
  image(seat_red_empty, f, 310);
  image(seat_red_empty, g, 310);
  image(seat_red_empty, h, 310);
  image(seat_red_empty, i, 310);
  image(seat_red_empty, j, 310);
  image(seat_red_empty, k, 310);
  image(seat_red_empty, l, 310);
  image(seat_red_empty, m, 310);
  image(seat_red_empty, n, 310);
  image(seat_red_empty, o, 310);
  image(seat_red_empty, p, 310);
  image(seat_red_empty, q, 310);
  image(seat_red_empty, r, 310);
  image(seat_red_empty, s, 310);
  image(seat_red_empty, t, 310);

  image(seat_red_empty, a, 390);
  image(seat_red_empty, b, 390);
  image(seat_red_empty, c, 390);
  image(seat_red_empty, d, 390);
  image(seat_red_empty, e, 390);
  image(seat_red_empty, f, 390);
  image(seat_red_empty, g, 390);
  image(seat_red_empty, h, 390);
  image(seat_red_empty, i, 390);
  image(seat_red_empty, j, 390);
  image(seat_red_empty, k, 390);
  image(seat_red_empty, l, 390);
  image(seat_red_empty, m, 390);
  image(seat_red_empty, n, 390);
  image(seat_red_empty, o, 390);
  image(seat_red_empty, p, 390);
  image(seat_red_empty, q, 390);
  image(seat_red_empty, r, 390);
  image(seat_red_empty, s, 390);
  image(seat_red_empty, t, 390);

  image(seat_red_empty, a, 470);
  image(seat_red_empty, b, 470);
  image(seat_red_empty, c, 470);
  image(seat_red_empty, d, 470);
  image(seat_red_empty, e, 470);
  image(seat_red_empty, f, 470);
  image(seat_red_empty, g, 470);
  image(seat_red_empty, h, 470);
  image(seat_red_empty, i, 470);
  image(seat_red_empty, j, 470);
  image(seat_red_empty, k, 470);
  image(seat_red_empty, l, 470);
  image(seat_red_empty, m, 470);
  image(seat_red_empty, n, 470);
  image(seat_red_empty, o, 470);
  image(seat_red_empty, p, 470);
  image(seat_red_empty, q, 470);
  image(seat_red_empty, r, 470);
  image(seat_red_empty, s, 470);
  image(seat_red_empty, t, 470);

  image(seat_red_empty, a, 550);
  image(seat_red_empty, b, 550);
  image(seat_red_empty, c, 550);
  image(seat_red_empty, d, 550);
  image(seat_red_empty, e, 550);
  image(seat_red_empty, f, 550);
  image(seat_red_empty, g, 550);
  image(seat_red_empty, h, 550);
  image(seat_red_empty, i, 550);
  image(seat_red_empty, j, 550);
  image(seat_red_empty, k, 550);
  image(seat_red_empty, l, 550);
  image(seat_red_empty, m, 550);
  image(seat_red_empty, n, 550);
  image(seat_red_empty, o, 550);
  image(seat_red_empty, p, 550);
  image(seat_red_empty, q, 550);
  image(seat_red_empty, r, 550);
  image(seat_red_empty, s, 550);
  image(seat_red_empty, t, 550);

  image(seat_red_empty, a, 630);
  image(seat_red_empty, b, 630);
  image(seat_red_empty, c, 630);
  image(seat_red_empty, d, 630);
  image(seat_red_empty, e, 630);
  image(seat_red_empty, f, 630);
  image(seat_red_empty, g, 630);
  image(seat_red_empty, h, 630);
  image(seat_red_empty, i, 630);
  image(seat_red_empty, j, 630);
  image(seat_red_empty, k, 630);
  image(seat_red_empty, l, 630);
  image(seat_red_empty, m, 630);
  image(seat_red_empty, n, 630);
  image(seat_red_empty, o, 630);
  image(seat_red_empty, p, 630);
  image(seat_red_empty, q, 630);
  image(seat_red_empty, r, 630);
  image(seat_red_empty, s, 630);
  image(seat_red_empty, t, 630);

  if (mouseX > 606 && mouseX < 656 && mouseY > 169 && mouseY < 219) {
    image(seat_red, a, 310);
    image(seat_red, b, 310);
    image(seat_red, c, 310);
    image(seat_red, d, 310);
    image(seat_red, e, 310);
    image(seat_red, f, 310);
    image(seat_red, g, 310);
    image(seat_red, h, 310);
    image(seat_red, i, 310);
    image(seat_red, j, 310);
    image(seat_red, k, 310);
    image(seat_red, l, 310);
    image(seat_red, m, 310);
    image(seat_red, n, 310);
    image(seat_red, o, 310);
    image(seat_red, p, 310);
    image(seat_red, q, 310);
    image(seat_red, r, 310);
    image(seat_red, s, 310);
    image(seat_red, t, 310);

    image(seat_red, a, 390);
    image(seat_red, b, 390);
    image(seat_red, c, 390);
    image(seat_red, d, 390);
    image(seat_red, e, 390);
    image(seat_red, f, 390);
    image(seat_red, g, 390);
    image(seat_red, h, 390);
    image(seat_red, i, 390);
    image(seat_red, j, 390);
    image(seat_red, k, 390);
    image(seat_red, l, 390);
    image(seat_red, m, 390);
    image(seat_red, n, 390);
    image(seat_red, o, 390);
    image(seat_red, p, 390);
    image(seat_red, q, 390);
    image(seat_red, r, 390);
    image(seat_red, s, 390);
    image(seat_red, t, 390);

    image(seat_red, a, 470);
    image(seat_red, b, 470);
    image(seat_red, c, 470);
    image(seat_red, d, 470);
    image(seat_red, e, 470);
    image(seat_red, f, 470);
    image(seat_red, g, 470);
    image(seat_red, h, 470);
    image(seat_red, i, 470);
    image(seat_red, j, 470);
    image(seat_red, k, 470);
    image(seat_red, l, 470);
    image(seat_red, m, 470);
    image(seat_red, n, 470);
    image(seat_red, o, 470);
    image(seat_red, p, 470);
    image(seat_red, q, 470);
    image(seat_red, r, 470);
    image(seat_red, s, 470);
    image(seat_red, t, 470);

    image(seat_red, a, 550);
    image(seat_red, b, 550);
    image(seat_red, c, 550);
    image(seat_red, d, 550);
    image(seat_red, e, 550);
    image(seat_red, f, 550);
    image(seat_red, g, 550);
    image(seat_red, h, 550);
    image(seat_red, i, 550);
    image(seat_red_empty, j, 550);
    image(seat_red_empty, k, 550);
    image(seat_red_empty, l, 550);
    image(seat_red_empty, m, 550);
    image(seat_red_empty, n, 550);
    image(seat_red_empty, o, 550);
    image(seat_red_empty, p, 550);
    image(seat_red_empty, q, 550);
    image(seat_red_empty, r, 550);
    image(seat_red_empty, s, 550);
    image(seat_red_empty, t, 550);

    image(seat_red_empty, a, 630);
    image(seat_red_empty, b, 630);
    image(seat_red_empty, c, 630);
    image(seat_red_empty, d, 630);
    image(seat_red_empty, e, 630);
    image(seat_red_empty, f, 630);
    image(seat_red_empty, g, 630);
    image(seat_red_empty, h, 630);
    image(seat_red_empty, i, 630);
    image(seat_red_empty, j, 630);
    image(seat_red_empty, k, 630);
    image(seat_red_empty, l, 630);
    image(seat_red_empty, m, 630);
    image(seat_red_empty, n, 630);
    image(seat_red_empty, o, 630);
    image(seat_red_empty, p, 630);
    image(seat_red_empty, q, 630);
    image(seat_red_empty, r, 630);
    image(seat_red_empty, s, 630);
    image(seat_red_empty, t, 630);

    image(bubble, a+6, 194);
    // PFont pfont = createFont("Arial", 20, true); // use true/false for smooth/no-smooth
    fill(0);
    textFont(pfont, 20);
    text("69% of us reporting in", 365, 280);
    text("from BC and Yukon!", 375, 300);
  }
  if (mouseX > 687 && mouseX < 737 && mouseY > 201 && mouseY < 251) {
    image(seat_red, a, 310);
    image(seat_red, b, 310);
    image(seat_red, c, 310);
    image(seat_red, d, 310);
    image(seat_red, e, 310);
    image(seat_red, f, 310);
    image(seat_red, g, 310);
    image(seat_red, h, 310);
    image(seat_red, i, 310);
    image(seat_red, j, 310);
    image(seat_red, k, 310);
    image(seat_red, l, 310);
    image(seat_red, m, 310);
    image(seat_red, n, 310);
    image(seat_red, o, 310);
    image(seat_red, p, 310);
    image(seat_red, q, 310);
    image(seat_red, r, 310);
    image(seat_red, s, 310);
    image(seat_red, t, 310);

    image(seat_red, a, 390);
    image(seat_red, b, 390);
    image(seat_red, c, 390);
    image(seat_red, d, 390);
    image(seat_red, e, 390);
    image(seat_red, f, 390);
    image(seat_red, g, 390);
    image(seat_red, h, 390);
    image(seat_red, i, 390);
    image(seat_red, j, 390);
    image(seat_red, k, 390);
    image(seat_red, l, 390);
    image(seat_red, m, 390);
    image(seat_red, n, 390);
    image(seat_red, o, 390);
    image(seat_red, p, 390);
    image(seat_red, q, 390);
    image(seat_red, r, 390);
    image(seat_red, s, 390);
    image(seat_red, t, 390);

    image(seat_red, a, 470);
    image(seat_red, b, 470);
    image(seat_red, c, 470);
    image(seat_red, d, 470);
    image(seat_red, e, 470);
    image(seat_red, f, 470);
    image(seat_red, g, 470);
    image(seat_red, h, 470);
    image(seat_red, i, 470);
    image(seat_red, j, 470);
    image(seat_red, k, 470);
    image(seat_red, l, 470);
    image(seat_red, m, 470);
    image(seat_red, n, 470);
    image(seat_red, o, 470);
    image(seat_red, p, 470);
    image(seat_red, q, 470);
    image(seat_red, r, 470);
    image(seat_red, s, 470);
    image(seat_red_empty, t, 470);

    image(seat_red_empty, a, 550);
    image(seat_red_empty, b, 550);
    image(seat_red_empty, c, 550);
    image(seat_red_empty, d, 550);
    image(seat_red_empty, e, 550);
    image(seat_red_empty, f, 550);
    image(seat_red_empty, g, 550);
    image(seat_red_empty, h, 550);
    image(seat_red_empty, i, 550);
    image(seat_red_empty, j, 550);
    image(seat_red_empty, k, 550);
    image(seat_red_empty, l, 550);
    image(seat_red_empty, m, 550);
    image(seat_red_empty, n, 550);
    image(seat_red_empty, o, 550);
    image(seat_red_empty, p, 550);
    image(seat_red_empty, q, 550);
    image(seat_red_empty, r, 550);
    image(seat_red_empty, s, 550);
    image(seat_red_empty, t, 550);

    image(seat_red_empty, a, 630);
    image(seat_red_empty, b, 630);
    image(seat_red_empty, c, 630);
    image(seat_red_empty, d, 630);
    image(seat_red_empty, e, 630);
    image(seat_red_empty, f, 630);
    image(seat_red_empty, g, 630);
    image(seat_red_empty, h, 630);
    image(seat_red_empty, i, 630);
    image(seat_red_empty, j, 630);
    image(seat_red_empty, k, 630);
    image(seat_red_empty, l, 630);
    image(seat_red_empty, m, 630);
    image(seat_red_empty, n, 630);
    image(seat_red_empty, o, 630);
    image(seat_red_empty, p, 630);
    image(seat_red_empty, q, 630);
    image(seat_red_empty, r, 630);
    image(seat_red_empty, s, 630);
    image(seat_red_empty, t, 630);

    image(bubble, n+6, 194);
    //PFont pfont = createFont("Arial", 20, true); // use true/false for smooth/no-smooth
    fill(0);
    textFont(pfont, 20);
    text("59% of us reporting in", 910, 280);
    text("from the Praires!", 930, 300);
  }
  if (mouseX > 760 && mouseX < 810 && mouseY > 230 && mouseY < 280) {
    image(seat_red, a, 310);
    image(seat_red, b, 310);
    image(seat_red, c, 310);
    image(seat_red, d, 310);
    image(seat_red, e, 310);
    image(seat_red, f, 310);
    image(seat_red, g, 310);
    image(seat_red, h, 310);
    image(seat_red, i, 310);
    image(seat_red, j, 310);
    image(seat_red, k, 310);
    image(seat_red, l, 310);
    image(seat_red, m, 310);
    image(seat_red, n, 310);
    image(seat_red, o, 310);
    image(seat_red, p, 310);
    image(seat_red, q, 310);
    image(seat_red, r, 310);
    image(seat_red, s, 310);
    image(seat_red, t, 310);

    image(seat_red, a, 390);
    image(seat_red, b, 390);
    image(seat_red, c, 390);
    image(seat_red, d, 390);
    image(seat_red, e, 390);
    image(seat_red, f, 390);
    image(seat_red, g, 390);
    image(seat_red, h, 390);
    image(seat_red, i, 390);
    image(seat_red, j, 390);
    image(seat_red, k, 390);
    image(seat_red, l, 390);
    image(seat_red, m, 390);
    image(seat_red, n, 390);
    image(seat_red, o, 390);
    image(seat_red, p, 390);
    image(seat_red, q, 390);
    image(seat_red, r, 390);
    image(seat_red, s, 390);
    image(seat_red, t, 390);

    image(seat_red, a, 470);
    image(seat_red, b, 470);
    image(seat_red, c, 470);
    image(seat_red, d, 470);
    image(seat_red, e, 470);
    image(seat_red, f, 470);
    image(seat_red, g, 470);
    image(seat_red, h, 470);
    image(seat_red, i, 470);
    image(seat_red, j, 470);
    image(seat_red, k, 470);
    image(seat_red, l, 470);
    image(seat_red, m, 470);
    image(seat_red, n, 470);
    image(seat_red, o, 470);
    image(seat_red, p, 470);
    image(seat_red, q, 470);
    image(seat_red, r, 470);
    image(seat_red, s, 470);
    image(seat_red, t, 470);

    image(seat_red, a, 550);
    image(seat_red, b, 550);
    image(seat_red, c, 550);
    image(seat_red, d, 550);
    image(seat_red, e, 550);
    image(seat_red, f, 550);
    image(seat_red, g, 550);
    image(seat_red, h, 550);
    image(seat_red, i, 550);
    image(seat_red, j, 550);
    image(seat_red, k, 550);
    image(seat_red, l, 550);
    image(seat_red, m, 550);
    image(seat_red, n, 550);
    image(seat_red, o, 550);
    image(seat_red_empty, p, 550);
    image(seat_red_empty, q, 550);
    image(seat_red_empty, r, 550);
    image(seat_red_empty, s, 550);
    image(seat_red_empty, t, 550);

    image(seat_red_empty, a, 630);
    image(seat_red_empty, b, 630);
    image(seat_red_empty, c, 630);
    image(seat_red_empty, d, 630);
    image(seat_red_empty, e, 630);
    image(seat_red_empty, f, 630);
    image(seat_red_empty, g, 630);
    image(seat_red_empty, h, 630);
    image(seat_red_empty, i, 630);
    image(seat_red_empty, j, 630);
    image(seat_red_empty, k, 630);
    image(seat_red_empty, l, 630);
    image(seat_red_empty, m, 630);
    image(seat_red_empty, n, 630);
    image(seat_red_empty, o, 630);
    image(seat_red_empty, p, 630);
    image(seat_red_empty, q, 630);
    image(seat_red_empty, r, 630);
    image(seat_red_empty, s, 630);
    image(seat_red_empty, t, 630);

    image(bubble, b+6, 354);

    // PFont pfont = createFont("Arial", 19, true); // use true/false for smooth/no-smooth
    fill(0);
    textFont(pfont, 19);
    text("A big 75% of us watching ", 395, 440);
    text(" docs in Ontario!", 430, 460);
  }
  if (mouseX > 816 && mouseX < 866 && mouseY > 208 && mouseY < 258) {
    image(seat_red, a, 310);
    image(seat_red, b, 310);
    image(seat_red, c, 310);
    image(seat_red, d, 310);
    image(seat_red, e, 310);
    image(seat_red, f, 310);
    image(seat_red, g, 310);
    image(seat_red, h, 310);
    image(seat_red, i, 310);
    image(seat_red, j, 310);
    image(seat_red, k, 310);
    image(seat_red, l, 310);
    image(seat_red, m, 310);
    image(seat_red, n, 310);
    image(seat_red, o, 310);
    image(seat_red, p, 310);
    image(seat_red, q, 310);
    image(seat_red, r, 310);
    image(seat_red, s, 310);
    image(seat_red, t, 310);

    image(seat_red, a, 390);
    image(seat_red, b, 390);
    image(seat_red, c, 390);
    image(seat_red, d, 390);
    image(seat_red, e, 390);
    image(seat_red, f, 390);
    image(seat_red, g, 390);
    image(seat_red, h, 390);
    image(seat_red, i, 390);
    image(seat_red, j, 390);
    image(seat_red, k, 390);
    image(seat_red, l, 390);
    image(seat_red, m, 390);
    image(seat_red, n, 390);
    image(seat_red, o, 390);
    image(seat_red, p, 390);
    image(seat_red, q, 390);
    image(seat_red, r, 390);
    image(seat_red, s, 390);
    image(seat_red, t, 390);

    image(seat_red, a, 470);
    image(seat_red, b, 470);
    image(seat_red, c, 470);
    image(seat_red, d, 470);
    image(seat_red, e, 470);
    image(seat_red, f, 470);
    image(seat_red, g, 470);
    image(seat_red, h, 470);
    image(seat_red, i, 470);
    image(seat_red, j, 470);
    image(seat_red, k, 470);
    image(seat_red, l, 470);
    image(seat_red, m, 470);
    image(seat_red, n, 470);
    image(seat_red, o, 470);
    image(seat_red_empty, p, 470);
    image(seat_red_empty, q, 470);
    image(seat_red_empty, r, 470);
    image(seat_red_empty, s, 470);
    image(seat_red_empty, t, 470);

    image(seat_red_empty, a, 550);
    image(seat_red_empty, b, 550);
    image(seat_red_empty, c, 550);
    image(seat_red_empty, d, 550);
    image(seat_red_empty, e, 550);
    image(seat_red_empty, f, 550);
    image(seat_red_empty, g, 550);
    image(seat_red_empty, h, 550);
    image(seat_red_empty, i, 550);
    image(seat_red_empty, j, 550);
    image(seat_red_empty, k, 550);
    image(seat_red_empty, l, 550);
    image(seat_red_empty, m, 550);
    image(seat_red_empty, n, 550);
    image(seat_red_empty, o, 550);
    image(seat_red_empty, p, 550);
    image(seat_red_empty, q, 550);
    image(seat_red_empty, r, 550);
    image(seat_red_empty, s, 550);
    image(seat_red_empty, t, 550);

    image(seat_red_empty, a, 630);
    image(seat_red_empty, b, 630);
    image(seat_red_empty, c, 630);
    image(seat_red_empty, d, 630);
    image(seat_red_empty, e, 630);
    image(seat_red_empty, f, 630);
    image(seat_red_empty, g, 630);
    image(seat_red_empty, h, 630);
    image(seat_red_empty, i, 630);
    image(seat_red_empty, j, 630);
    image(seat_red_empty, k, 630);
    image(seat_red_empty, l, 630);
    image(seat_red_empty, m, 630);
    image(seat_red_empty, n, 630);
    image(seat_red_empty, o, 630);
    image(seat_red_empty, p, 630);
    image(seat_red_empty, q, 630);
    image(seat_red_empty, r, 630);
    image(seat_red_empty, s, 630);
    image(seat_red_empty, t, 630);

    image(bubble, n+6, 270);
    //PFont pfont = createFont("Arial", 19, true); // use true/false for smooth/no-smooth
    fill(0);
    textFont(pfont, 19);
    text("Only 55% of Quebec ", 915, 360);
    text("is watching docs!", 930, 380);
  }
  if (mouseX > 847 && mouseX < 897 && mouseY > 152 && mouseY < 202) {
    image(seat_red, a, 310);
    image(seat_red, b, 310);
    image(seat_red, c, 310);
    image(seat_red, d, 310);
    image(seat_red, e, 310);
    image(seat_red, f, 310);
    image(seat_red, g, 310);
    image(seat_red, h, 310);
    image(seat_red, i, 310);
    image(seat_red, j, 310);
    image(seat_red, k, 310);
    image(seat_red, l, 310);
    image(seat_red, m, 310);
    image(seat_red, n, 310);
    image(seat_red, o, 310);
    image(seat_red, p, 310);
    image(seat_red, q, 310);
    image(seat_red, r, 310);
    image(seat_red, s, 310);
    image(seat_red, t, 310);

    image(seat_red, a, 390);
    image(seat_red, b, 390);
    image(seat_red, c, 390);
    image(seat_red, d, 390);
    image(seat_red, e, 390);
    image(seat_red, f, 390);
    image(seat_red, g, 390);
    image(seat_red, h, 390);
    image(seat_red, i, 390);
    image(seat_red, j, 390);
    image(seat_red, k, 390);
    image(seat_red, l, 390);
    image(seat_red, m, 390);
    image(seat_red, n, 390);
    image(seat_red, o, 390);
    image(seat_red, p, 390);
    image(seat_red, q, 390);
    image(seat_red, r, 390);
    image(seat_red, s, 390);
    image(seat_red, t, 390);

    image(seat_red, a, 470);
    image(seat_red, b, 470);
    image(seat_red, c, 470);
    image(seat_red, d, 470);
    image(seat_red, e, 470);
    image(seat_red, f, 470);
    image(seat_red_empty, g, 470);
    image(seat_red_empty, h, 470);
    image(seat_red_empty, i, 470);
    image(seat_red_empty, j, 470);
    image(seat_red_empty, k, 470);
    image(seat_red_empty, l, 470);
    image(seat_red_empty, m, 470);
    image(seat_red_empty, n, 470);
    image(seat_red_empty, o, 470);
    image(seat_red_empty, p, 470);
    image(seat_red_empty, q, 470);
    image(seat_red_empty, r, 470);
    image(seat_red_empty, s, 470);
    image(seat_red_empty, t, 470);

    image(seat_red_empty, a, 550);
    image(seat_red_empty, b, 550);
    image(seat_red_empty, c, 550);
    image(seat_red_empty, d, 550);
    image(seat_red_empty, e, 550);
    image(seat_red_empty, f, 550);
    image(seat_red_empty, g, 550);
    image(seat_red_empty, h, 550);
    image(seat_red_empty, i, 550);
    image(seat_red_empty, j, 550);
    image(seat_red_empty, k, 550);
    image(seat_red_empty, l, 550);
    image(seat_red_empty, m, 550);
    image(seat_red_empty, n, 550);
    image(seat_red_empty, o, 550);
    image(seat_red_empty, p, 550);
    image(seat_red_empty, q, 550);
    image(seat_red_empty, r, 550);
    image(seat_red_empty, s, 550);
    image(seat_red_empty, t, 550);

    image(seat_red_empty, a, 630);
    image(seat_red_empty, b, 630);
    image(seat_red_empty, c, 630);
    image(seat_red_empty, d, 630);
    image(seat_red_empty, e, 630);
    image(seat_red_empty, f, 630);
    image(seat_red_empty, g, 630);
    image(seat_red_empty, h, 630);
    image(seat_red_empty, i, 630);
    image(seat_red_empty, j, 630);
    image(seat_red_empty, k, 630);
    image(seat_red_empty, l, 630);
    image(seat_red_empty, m, 630);
    image(seat_red_empty, n, 630);
    image(seat_red_empty, o, 630);
    image(seat_red_empty, p, 630);
    image(seat_red_empty, q, 630);
    image(seat_red_empty, r, 630);
    image(seat_red_empty, s, 630);
    image(seat_red_empty, t, 630);

    image(bubble, a+6, 194);
    //PFont pfont = createFont("Arial", 19, true); // use true/false for smooth/no-smooth
    fill(0);
    textFont(pfont, 19);
    text("46% of Atlantic Canada ", 365, 280);
    text("has hotDocs, we are", 365, 300);
    text(" all too busy fishing!", 370, 320);
  }
}

///////////////////////////////////////////
void keyPressed() {

  if (key == '1') {
    docState = SCREEN1;
  }

  if (key == '2') {
    docState = SCREEN2;
  }

  if (key == '3') {
    docState = SCREEN3;
  }
  if (key == '4') {
    docState = SCREEN4;
  }
  if (key == '5') {
    docState = SCREEN5;
  }
  if (key == '6') {
    docState = SCREEN6;
  }
}
void mousePressed() {
  if (docState == INTRO) {
    docState = INTRO2;
    background(38, 40, 30);

    gui.getController("Willing to Pay ?")
      .setVisible(true);
    gui.getController("Watch in a Theatre ?") 
      .setVisible(true);
    gui.getController("Watch at a Festival ?")
      .setVisible(true);
    gui.getController("Watch at Home ?")
      .setVisible(true);
    gui.getController("Types of Fans ?") 
      .setVisible(true);
    gui.getController("Fans Based on Region")
      .setVisible(true);

    fill(255);

    rect(300, 0, 859, 719);
    rect(400, 50, 660, 250);



    image(mini, 27, 546);
  }
  if (docState != INTRO) {
    if (mouseX >10 && mouseX<290 && mouseY>10 && mouseY<90) {
      docState = SCREEN1;
      text =false;
    }
    if (mouseX >10 && mouseX<290 && mouseY>100 && mouseY<180) {
      docState = SCREEN2;
      text = false;
    }
    if (mouseX >10 && mouseX<290 && mouseY>190 && mouseY<270) {
      docState = SCREEN3;
      text = false;
    }
    if (mouseX >10 && mouseX<290 && mouseY>280 && mouseY<360) {
      docState = SCREEN4;
      text = false;
    }
    if (mouseX >10 && mouseX<290 && mouseY>370 && mouseY<450) {
      docState = SCREEN5;
      text = false;
    }
    if (mouseX >10 && mouseX<290 && mouseY>460 && mouseY<540) {
      docState = SCREEN6;
      text = false;
    }
  }
}

