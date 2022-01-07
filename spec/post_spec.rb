describe 'fazer uma requisicao' do
    it 'post' do
        @body = {
           "name": "Arnaldo",
           "last_name": "SuasNegas",
           "email": "arnaldosuasnegas@gmail.com",
           "age": "63",
           "phone": "11958010809",
           "address": "Rua Brasil, 1170",
           "state": "São Paulo",
           "city": "São Paulo"
        }.to_json

        @headers = {
            "Accept":       'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
        }

        @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body , headers: @headers)
        puts @request
        @request = Contato.post('/contacts/', body: @body) 
        puts @request
    end
end