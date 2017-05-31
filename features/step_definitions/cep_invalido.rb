Dado(/^que esteja no EndPoint$/) do

end

Quando(/^eu pesquisar por um CEP inválido$/) do
 
	@getcep = HTTParty.get("http://viacep.com.br/ws/068231501/json")

end

Então(/^recebo mensagem de erro$/) do
  
	puts @code = @getcep.code
	puts @message = @getcep.message
	puts @body = @getcep.body

	valida = @code.between?(200,299)
	expect(valida).to be true

end