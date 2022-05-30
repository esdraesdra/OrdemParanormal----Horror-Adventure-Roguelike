#region aleatorizando e criando sobrenomes para nossos queridinhos
//os sobrenomes serão sempre compostos por duas palavras da lingua portugues em geral quero q fique as mais desconhecidas
//o name1 com o segundo digito 0 vem primeiro o com digito 2 vem em segundo
global.name1[0,0] = "Ciclo"
global.name1[1,0] = "Fogo"
global.name1[2,0] = "Luzidia"
global.name1[3,0] = "Senatriz"
global.name1[4,0] = "Ater"
global.name1[5,0] = "Peixe"
global.name1[6,0] = "Nexo"
global.name1[7,0] = "Rito"
global.name1[8,0] = "Mero"
global.name1[9,0] = "Rege"


global.name1[0,2] = "floresta"
global.name1[1,2] = "agua"
global.name1[2,2] = "gemeos"
global.name1[3,2] = "rude"
global.name1[4,2] = "logo"
global.name1[5,2] = "asco"
global.name1[6,2] = "orla"
global.name1[7,2] = "vide"
global.name1[8,2] = "ride"
global.name1[9,2] = "alva"

//esses aqui de baixo que faz o trampo de aleatoriza
var rand = irandom(9);
var rand2 = irandom(9);

//aleatorizando os nomes
global.sobrenome = global.name1[rand,0];
global.sobrenome2 = global.name1[rand2,2];
global.name = string("Pedro") + global.sobrenome + global.sobrenome2;
#endregion