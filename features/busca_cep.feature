# language: pt

Funcionalidade: Pesquisar CEP Brasil

@cepvalido
Cenário: Pesquisar CEP válido
  Quando eu pesquisar por um CEP válido
  Então recebo as informações de CEP

@cepinvalido
Cenário: Pesquisar CEP inválido
  Quando eu pesquisar por um CEP inválido
  Então recebo mensagem de erro