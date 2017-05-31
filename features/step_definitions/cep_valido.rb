Dado(/^que eu esteja no EndPoint$/) do
 
end

Quando(/^eu pesquisar por um CEP válido$/) do
  
	@getcep = HTTParty.get("http://viacep.com.br/ws/06823150/json")

end

Então(/^recebo as informações de CEP$/) do
  
	puts @code = @getcep.code
	puts @message = @getcep.message
	puts @body = @getcep.body

	valida = @code.between?(200,299)

	expect(valida).to be true

end