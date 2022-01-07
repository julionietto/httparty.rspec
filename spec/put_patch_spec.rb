describe 'requisições com put e patch' do
    it 'put' do
        @body = {
           "id": "936",
           "name": "Bruce",
           "last-name": "Lee da Silva",
           "email": "bruceleesilva@gmail.com",
           "age": 33,
           "phone": "11958010809",
           "address": "Rua Brasil, 1170",
           "state": "São Paulo",
           "city": "São Paulo"
        }.to_json

        @requisicao_put = Contato.put('/contacts/936', body: @body)
        puts @requisicao_put
   end

    it 'patch' do 
        @body = {
            "id": "933",
            "phone": "119999999999"
        }.to_json

        @requisicao_patch = Contato.patch('/contacts/933', body: @body)
        puts @requisicao_patch
    end
    
end