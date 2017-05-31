Quando(/^alterar os dados de um usuario$/) do

	#@response = HTTParty.get("http://jsonplaceholder.typicode.com/users/1")
	#puts @response

  	@userbody = {
  		"name": "Thialison Souza",
  		"username": "Tayson",
  		"phone": "11 981000393"
   	}.to_json

  	@userupdate = HTTParty.put("http://jsonplaceholder.typicode.com/users/1",
  		:body => @userbody,
  		:headers => {"Content-Type" => "application/json"})
end

Então(/^usuario é alterado com sucesso$/) do

	@code = @userupdate.code
	valida = @code.between?(200,299)
	expect(valida).to be true

end