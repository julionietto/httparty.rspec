module Contato 
    include HTTParty
    
    #url base
    base_uri 'https://api-de-tarefas.kerokuapp.com'

    #opcoes do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
           'Content-Type': 'application/json'
end
