void cenario() {
  imageMode(CORNER);
  image(cenario, xCenario, 0);
  //imagem auxiliar(contém o mesmo contúdo da primeira), serve para que quando a primeira imagem estiver saindo da tela, o fundo nao fique cinza
  image(cenario, xCenario + cenario.width, 0);
  // verifico se a imagem já saiu completamente da tela e a mando para o início novamente.
  if (xCenario <= -1000) {
    xCenario = 0;
  }
  // decremento no "xCenario" para que o cenário se mova.
  xCenario -= 2;
  if (vivo == false) {
    xCenario = 0;
  }
}
