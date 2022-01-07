describe 'validadr uma requisicao' do
    it 'validar' do
        @request = Contato.get('/contacts/933')

        #mostra o codigo de retorno do http
        puts "Http code = #{@request.code}"

        #mostra o conteudo inteiro do response
        puts "Response = #{@request.parsed_response}"

        #mostra apenas o conteudo de um campo do response
        #importante seguir o caminho inteiro dentro do objeto. 
        #Ex. o campo age está dentro do campo attributes que está dentro do objeto data
        puts "Id     = #{@request.parsed_response['data']['id']}"
        puts "Nome   = #{@request.parsed_response['data']['attributes']['name']}"
        puts "Idade  = #{@request.parsed_response['data']['attributes']['age']}"
        puts "Cidade = #{@request.parsed_response['data']['attributes']['email']}"

        #mostra o conteudo de um campo do headers
        puts "Content-Type = #{@request.headers['content-type']}"
        
        expect(@request.code).to eq 200

        #manipulando dados para testar... rsrs
        @IdNovo = @request.parsed_response['data']['id'].to_i
        @idNovo = @IdNovo + 1
        expect(@idNovo).to eq 934

        expect(@request.parsed_response['data']['id']).to eq "933"
    end
end