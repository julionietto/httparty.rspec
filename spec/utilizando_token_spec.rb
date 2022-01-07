describe 'utilizando' do
    it 'token' do
        # gerando um email aleatório via Faker
        @email = Faker::Internet.email

        # populando o body da mensagem
        @body = {
            user:{
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            }
        }.to_json

        # definindo o header
        @header = {
            Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json' 
        }

        #Chamando a requisicao para criar um novo usuário
        @criar = Criar.post('/users', body: @body, headers: @header)

        puts     "Response = #{@criar.parsed_response}"
        puts   = @criar.parsed_response['data']['attributes']['auth-token']
        @token = @criar.parsed_response['data']['attributes']['auth-token']

        #Agora vamos realizar o login com esse novo usuário criado
        # definindo um novo body 
        @body_one = {
            session: {
                email: @email,
                password: '123456'
            }.to_json
        }

        #definindo um novo header com o atributo Authorization que tem o token gerado na criação do usuário
        @header_one = {
            Accept: 'application/vnd.tasksmanager.v2',
                    'Content-Type': 'application/json', 
                    'Authorization': @token
        }

        #Requisição de login
        @login = Criar.post('/session', body: @body_one, headers: @header_one)
        puts "Login = #{@login.body}"
    end
end