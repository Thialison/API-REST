# language: pt
# coding: utf-8

Funcionalidade: Realizar CRUD de API

Eu como testador
Quero realizar testes de API
Para aprender como faz esta bagaça

@post
Cenário: Adicionar um novo usuário
Dado que estou no EndPoint users
Quando eu passo os dados de um usuário
Então usuário é cadastrado com sucesso

@get
Cenário: Buscar usuário cadastrado
Dado que estou no EndPoint users
Quando eu busco por um usuario
Então usuário é apresentado

@update
Cenário: Alterar usuário cadastrado
Dado que estou no EndPoint users
Quando alterar os dados de um usuario
Então usuario é alterado com sucesso

@delete
Cenário: Deletar usuario cadastrado
Dado que estou no EndPoint users
Quando eu deletar um usuario cadastrado
Então o serviço retorna o usuario excluido com sucesso