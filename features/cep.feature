# language: pt
# coding: utf-8

Funcionalidade: Pesquisar CEP Brasil

@cepvalido
Cenário: Pesquisar CEP válido
Dado que eu esteja no EndPoint
Quando eu pesquisar por um CEP válido
Então recebo as informações de CEP

@cepinvalido
Cenário: Pesquisar CEP inválido
Dado que esteja no EndPoint
Quando eu pesquisar por um CEP inválido
Então recebo mensagem de erro