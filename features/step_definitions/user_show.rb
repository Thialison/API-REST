Quando(/^eu busco por um usuario$/) do
  
  	id = rand(1..20)
	@getuser = HTTParty.get("http://jsonplaceholder.typicode.com/users/#{id}")

end

Então(/^usuário é apresentado$/) do
 	
 	@code = @getuser.code
 	puts @code
 	valida = @code.between?(200,299)
 	expect(valida).to be true

end