# frozen_string_literal: true

Quando(/^eu pesquisar por um CEP válido$/) do
  @response = HTTParty.get('http://viacep.com.br/ws/06823150/json')
end

Então(/^recebo as informações de CEP$/) do
  puts @code = @response.code
  puts @message = @response.message
  puts @body = @response.body

  expect(@code.between?(200, 299)).to be true
end

Quando(/^eu pesquisar por um CEP inválido$/) do
  @response = HTTParty.get('http://viacep.com.br/ws/068231501/json')
end

Então(/^recebo mensagem de erro$/) do
  puts @code = @response.code
  puts @message = @response.message
  puts @body = @response.body

  expect(@code.between?(200, 299)).to be false
end
