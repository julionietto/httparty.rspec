describe 'Buscar dados de contatos' do

    # Se não criar um module, essa é uma opção de utilizar API.
    # usando o comando HTTParty.verbo (get, post, put, delete) e passando a uri direta.
    it 'get-httparty-puro' do
        @primeiro_jeito = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts/933')
        puts @primeiro_jeito
    end

    #Como fizemos a inclusão do module Contato, existe outra forma mais limpa de fazer 
    it 'get-include-module' do
        @melhor_jeito = Contato.get('/contacts')
        puts @melhor_jeito
    end
end