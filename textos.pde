
//função pra construir o menu quando o jogo nao estiver rolando
void mainPage (){
  fill(0);
  imageMode(CORNER);
  image(telaInicial, 0, 0);
  textFont(fonteTitulo);
  text("Flappy Bird", 250, 150);
  textFont(fonte);
  text("aperte < espaço > para pular", 250, 300);
  text("Clique para jogar", 250, 350);
  text("HighScore: " + maxPontos, 250, 450);
}
