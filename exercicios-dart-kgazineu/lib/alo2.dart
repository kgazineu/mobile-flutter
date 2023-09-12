// Crie uma função, dizAlo, que recebe dois parâmetros
// *nomeados*, nome e saudacao, e retorna uma String
// cumprimentando a pessoa com a saudação e o nome
// informado.
//
// Exemplo: dizAlo2(saudacao: 'Olá', nome: 'galera')
//          deve retornar 'Olá, galera!'
//
// Se a saudação não for informada, use 'Alô' como padrão.
// Exemplo: dizAlo(nome: 'Maria')
//          deve retornar 'Alô, Maria!'.

dizAlo({String? nome, String? saudacao}){
  saudacao??= "Alô";
  return "$saudacao, $nome!";
}
