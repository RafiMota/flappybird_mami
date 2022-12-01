class Bird {
  int x;
  float G, y;

  Bird() {
    this.x = width/2;
    this.y = width/2;
    // simulação de gravidade, G é a força peso.
    G = 1;
  }

  void Fly() {
    // G é incrementado a cada segundo, para que dê o efeito de queda mais ráida a cada segundo a mais que o passáro passa caindo.
    G = G+0.8;
    this.y = y + G;
    fill(255);
    image(passaro, this.x, this.y);
    if (keyPressed) {
      if (key == ' ') {
        // caso a tecla seja apertada G fica negativo, ou seja, gravidade negativa. Com isso o passaário sobe.
        this.G = -8;
      }
    }
  }
}
