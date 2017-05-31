Dado(/^que estou no EndPoint users$/) do

end

Quando(/^eu passo os dados de um usuário$/) do

	@postbody = {
		"id": 34,
		"name": "Teste",
		"username": "Bret",
		"email": "Sincere@april.biz"
	}.to_json

	@response = HTTParty.post("http://jsonplaceholder.typicode.com/users",
		:body => @postbody,
		:headers => {"Content-Type" => "application/json"})
	
end

Então(/^usuário é cadastrado com sucesso$/) do

		@message = @response.message
		@code = @response.code

		puts @response.body, @response.code, @response.message, @response.headers.inspect
		@code.between?(200,299)
		fail unless @message == "Created"
end