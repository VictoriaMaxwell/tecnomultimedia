PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage fotodereinicio;
PFont myFont;
float y = 50;
float x = 50;
float velocidad = 1;
int pantalla = 1;
int tiempo = 7;
int tiempobotonreinicio = second();

void setup() {
  size(640, 480);

  pantalla1 = loadImage("BABY_PANDA.jpg");
  pantalla2 = loadImage("PANDIX.jpg");
  pantalla3 = loadImage("PANDAA.jpg");
  fotodereinicio = loadImage("FotoReinicio.jpg");
  
  myFont = loadFont("fuenteNueva.vlw");
  textFont(myFont);
  
  tiempo = second();
}

void draw() {
  if (pantalla == 1 ) {
    image(pantalla1, 0, 0, 640, 480);
    fill (255, 127, 80);
    text("De nombre científico Ailuropoda melanoleuca, ",y-80, 180, 20);
    text ("el oso panda o panda gigante es uno de los animales más famosos del mundo entero.", y-80, 210,250);
    text(" Peluches, dibujos, camisetas, disfraces.., ", y-80,240 ,250); 
    text("desde luego su presencia es notable en casi cualquier ámbito.", y-80,270,250);
    y = y + velocidad;
  } else if (pantalla == 2) {
    image(pantalla2, 0, 0, 640, 480);
    fill (0, 139, 139);
    text("¿Sabías que cuando nacen lucen una piel rosada y pelaje blanco? Las manchas negras aparecen conforme se desarrollan. ", 90, x, 500, 250);
    x += velocidad;
  } else if (pantalla == 3) {
    image(pantalla3, 0, 0, 640, 480);
    fill (153, 50, 204);
    text("Suelen vivir entre quince y veinte años, pesan unos 130 kilos y pueden llegar a medir 1'5 metros .",y-50, x-50,400, 500);
     x += velocidad;
     y += velocidad;
     if (x > 150) {
       velocidad =0 ;
     }
  }

  if (second() - tiempobotonreinicio > 10 && pantalla == 3) {
    image(fotodereinicio, 500, 370, 70, 70);
  }

  if (second() - tiempo > 3) {
    pantalla++;
    tiempo = second();
  }
  
  if (pantalla > 3) {
    pantalla = 3;
  }
}

void mouseClicked() {
  if (pantalla == 3 && mouseX > 500 && mouseX < 600 && mouseY > 370 && mouseY < 420) {
    pantalla = 1;
  tiempo = second();
  x = 50;
  y = 50;
  velocidad = 1;
  }
}
