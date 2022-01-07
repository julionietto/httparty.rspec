module Criar 
    include HTTParty
    
    #url base
    base_uri 'https://api-de-tarefas.herokuapp.com'

    #opcoes do meu service
    format :json
end
