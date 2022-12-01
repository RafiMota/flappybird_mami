void canos() {
  for (int i = 0; i<canoX.length; i++) {
    imageMode(CENTER);
    // ponho as duas imagens de cano na tela ( cano de cima e de baixo), os dois com o mesmo "X" e com o mesmo "Y" , porém subtraindo ou somando com "height/2"
    image(canos, canoX[i], canoY[i] - canos.height/2 - 40);
    println(canoY[i]);
    image(canos, canoX[i], canoY[i] + canos.height/2 -20);

    println("cano 0  " + canoY[0]);
    // incremento 2 no "canoX" para que ele se mova horizontalmente.
    canoX[i] -=2;
    // verifico se o cano saiu da extremidade da tela, caso tenha saído, eu o redireciono para o inicio da tela, porem com uma altura random de 200 a 500 pixels.
    if (canoX[i]<=0) {
      canoX[i] = width;
      canoY[i] = int(random(200, 500));
    }
    // verifico se o "canoX" passou pela metade da tela ( lugar onde o passáro está), caso tenha passado, a variável de pontos recebe +1.
    if (canoX[i] == width/2) {
      pontos = pontos + 1;
      maxPontos = max(pontos, maxPontos);
    }
    // verifico se o passáro está antes do cano, para nao haver colisão mesmo com ele ja tendo passado pelo cano.
    if (bird.x - canoX[i] < 10) {
      // colisões do passáro com um cano ( ainda em processo de resolução de bugs).
      if ( abs(canoX[i] - bird.x) < 75 && abs(bird.y - canoY[i]) > 80 ) {
        // a variavel "vivo" recebe "false", logo as funções no "void draw" para de rodar.
        vivo = false;
      }
    }

    // colisões para extremidades de tela
    if (bird.y >= height -10 || bird.y <= 10) {
      fill(0);
      // a variavel "vivo" recebe "false", logo as funções no "void draw" para de rodar.
      vivo = false;
      //o passaro vai para a posição inicial e a gravidade recebe o valor inicial, para deixar o jogo pronto para ser iniciado novamente
      bird.y = width/2;
      bird.G = 1;
    }
    if (vivo == false) {
      // faço os parametros X e Y dos canos e os pontos voltarem ao valor inicial, para deixar o jogo pronto para ser iniciado novamente
      canoX[0] = 500;
      canoX[1] = 800;
      canoY[0] = 250;
      canoY[1] = 300;
      pontos = 0;
    }
  }
}
