# frozen_string_literal: true

Quando(/^eu passo os dados de um usuário$/) do
  @postbody = {
    "id": 34,
    "name": 'Teste',
    "username": 'Bret',
    "email": 'Sincere@april.biz'
  }.to_json

  @response = HTTParty.post('http://jsonplaceholder.typicode.com/users',
                            body: @postbody,
                            headers: { 'Content-Type' => 'application/json' })
end

Quando(/^eu deletar um usuario cadastrado$/) do
  id = rand(1..20)
  @response = HTTParty.delete("http://jsonplaceholder.typicode.com/users/#{id}")
end

Quando(/^alterar os dados de um usuario$/) do
  @userbody = {
    "name": 'Thialison Souza',
    "username": 'Tayson',
    "phone": '11 981000393'
  }.to_json

  @response = HTTParty.put('http://jsonplaceholder.typicode.com/users/1',
                           body: @userbody,
                           headers: { 'Content-Type' => 'application/json' })
end

Então(/^usuario é alterado com sucesso$/) do
  @code = @response.code
  expect(@code.between?(200, 299)).to be true
end

Então(/^o serviço retorna o usuario excluido com sucesso$/) do
  puts @response.code
  expect(@response.code.between?(200, 299)).to be true
end

Então(/^usuário é cadastrado com sucesso$/) do
  @message = @response.message
  @code = @response.code

  puts @response.body, @response.code
  expect(@code.between?(200, 299)).to be true
end
