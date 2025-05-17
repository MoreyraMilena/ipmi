PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
PFont miFuente;
PFont miFuente2;
PFont miFuente3;
int tam = 1;
int tam2 = 1;
int incTam=1;
int posX1 = 480;
int posX= 100;
int posY = 0;
int posY2 = 480;
int dir =1;
int alpha =0;
int transp = 2;
int tiempoTotal = 1800;
void setup () {
  size (640, 480);
  img1 = loadImage ("imagen 1.jpg");
  img2 = loadImage ("imagen 2.jpeg");
  img3 = loadImage ("imagen 3.jpeg");
  img4 = loadImage ("imagen 4.jpeg");
  img5 = loadImage ("imagen 5.jpg");
  img6 = loadImage ("imagen 6.jpg");
  img7 = loadImage ("imagen 7.jpeg");
  miFuente = loadFont("miFuente.vlw");
  miFuente2 = loadFont("miFuente2.vlw");
  miFuente3 = loadFont("miFuente3.vlw");
}

void draw () {
  textFont(miFuente);
  textSize (30);
  textAlign(CENTER);
  if (tiempoTotal>1500) {
    tiempoTotal--;
    image(img1, 0, 0);
    text("El cuento presenta a un narrador anónimo que se debate entre la locura y la cordura. Se describe a sí mismo como una persona meticulosa y con un oído extremadamente agudo, lo cual utiliza para justificar la meticulosa ejecución del asesinato del anciano.", 0, posY, 640, 480);
    posY= posY + 1;
  } else if (tiempoTotal > 1225) {
    tiempoTotal--;
    image(img2, 0, 0);
    text("El narrador se obsesiona con el 'ojo de buitre' del anciano, lo que lo lleva a planear cuidadosamente el crimen.", posX1, 50, tam, 200);
    if (tam <200);
    {
      tam = tam +2;
    }
    if (posX1>10);
    {
      posX1 = posX1 - 2;
    }
  } else if (tiempoTotal>1100) {
    tiempoTotal--;
    image(img3, 0, 0);
    textFont(miFuente3);
    textSize(tam2);
    if (tam2 < 30) {
      tam2 = tam2 + incTam;
    } else {
      incTam = 0;
    }
    text("El narrador describe cómo, durante varias noches, observa al anciano mientras este duerme, hasta que finalmente, en una noche específica, lo sorprende y lo mata.", 100, 100, 400, 400);
  } else if (tiempoTotal>700) {
    tiempoTotal--;
    image(img5, 0, 0);
    textFont(miFuente2);
    textSize(25);
    text("Después de la muerte del anciano, el narrador descuartiza el cuerpo y lo esconde bajo el suelo. Para demostrar su cordura, el narrador intenta convencer a los detectives de que no hay nada que sospechar, pero finalmente, la audición del latido del corazón del anciano bajo las tablas lo lleva a confesar.", posX, 150, 550, 400);
    posX = posX + dir;
    if (posX > 100) {
      dir = -1;
    }
    if (posX < 0) {
      dir = 1;
    }
  } else if (tiempoTotal>550) {
    tiempoTotal--;
    image(img6, 0, 0);
    fill(255, alpha);
    text("El final del cuento destaca la idea de que la culpa y la conciencia pueden superar la planificación más cuidadosa, incluso cuando se intenta cometer un crimen perfecto.", 10, 10, 630, 470);
    if (alpha < 255) {
      alpha += transp;
    }
  } else if (tiempoTotal>150) {
    tiempoTotal--;
    image(img7, 0, 0);
    textSize(40);
    fill(#FF0000);
    text("El narrador, al final, se entrega a las autoridades, creyendo que el sonido del corazón del anciano delata su crimen.", 10, posY, 630, 470);
    posY= posY -1;
  } else {
    background(200);
    fill(#FF0000);
    rect(200, 200, 240, 100);
    fill(255);
    text("Reiniciar", 300, 250);
  }
}
void mouseClicked() {
  if (mouseX > 200 && mouseX < 400 && mouseY > 200 && mouseY < 300) {
    resetPresentacion();
  }
}

void resetPresentacion() {
  tiempoTotal = 1800;
  posY = 0;
  posX = 100;
  posX1 = 480;
  tam = 1;
  tam2 = 1;
  incTam = 1;
  alpha = 0;
  }
