Quando(/^eu deletar um usuario cadastrado$/) do
  
  	id = rand(1..20)
	@deleteuser = HTTParty.delete("http://jsonplaceholder.typicode.com/users/#{id}")

end

Então(/^o serviço retorna o usuario excluido com sucesso$/) do
  
	puts @deleteuser.code
	valida = @deleteuser.code.between?(200,299)
	expect(valida).to be true

end