int canoX[] = new int[2];
int canoY[] = new int[2];
PFont fonte, fonteTitulo;
PImage canos, cenario, passaro, telaInicial;
int xCenario;
Bird bird;
int pontos =0;
int maxPontos;
boolean vivo = false;
void setup() {
  size(500, 700);
  textAlign(CENTER);
  fonte = createFont("AtariSmall.ttf", 30);
  fonteTitulo = createFont("AtariSmall.ttf", 70);
  canos = loadImage("imagens/canos.png");
  cenario = loadImage("imagens/cenario.png");
  passaro = loadImage("imagens/bird.png");
  telaInicial = loadImage("imagens/telainicio.png");
  bird = new Bird();
  xCenario = 0;
  // declaração do X e Y dos canos.
  canoX[0] = 500;
  canoX[1] = 800;
  canoY[0] = 250;
  canoY[1] = 300;
}

void draw() {
  background(127);
  mainPage();
  //verifico se a variável vivo está verdadeira para iniciar o jogo
  if (vivo == true ) {
    cenario();
    canos();
    bird.Fly();
    fill(0);
    text( pontos, 250, 100);
  }
}

void mousePressed() {
  if (vivo == false) {
    // quando vivo for igual a "false" eu clico na tela e jogo inicia novamente (vivo = true).
    if (mousePressed) {
      vivo = true;
    }
  }
}
