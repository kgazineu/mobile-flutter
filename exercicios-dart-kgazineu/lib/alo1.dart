// Crie uma função, dizAlo, que recebe dois parâmetros,
// nome e saudacao, e retorna uma String cumprimentando
// a pessoa com a saudação e o nome informado.
// Exemplo: dizAlo('João', 'Olá') retorna 'Olá, João!'.
// Se a saudação não for informada, use 'Alô' como padrão.
// Exemplo: dizAlo('Maria') retorna 'Alô, Maria!'.

dizAlo(String nome, [String? saudacao]){
  saudacao??= "Alô";
  return "$saudacao, $nome!";
}
