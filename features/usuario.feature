# language: pt
# coding: utf-8

Funcionalidade: Realizar CRUD de API

Eu como testador
Quero realizar testes de API
Para aprender como faz esta bagaça

@post
Cenário: Adicionar um novo usuário
Quando eu passo os dados de um usuário
Então usuário é cadastrado com sucesso

@update
Cenário: Alterar usuário cadastrado
Quando alterar os dados de um usuario
Então usuario é alterado com sucesso

@delete
Cenário: Deletar usuario cadastrado
Quando eu deletar um usuario cadastrado
Então o serviço retorna o usuario excluido com sucesso