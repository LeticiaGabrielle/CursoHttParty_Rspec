module Contato
    include HTTParty
    #url base de contatos
    base_uri 'https://api-de-tarefas.herokuapp.com'
    #opcoes do meu service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
    'Content-Type': 'application/json'
end                
    
#toda vez que eu chamar esse modulo a url padrao dele sera https://api-de-tarefas.herokuapp.com
# e ele tera o header com as opções que são o ACCEPT e o CONTENT-TYPE e vira em JSON



    
