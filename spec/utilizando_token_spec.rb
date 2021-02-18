#senha de segurança para trazer o retorno da api

describe 'usando' do
    it 'token' do

        #gera um email aleatorio
        # e passando parametros
        @email = Faker::Internet.email

        @body = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            }
        }.to_json

        @header = {
            Accept: 'application/vnd.tasksmanager.v2',
         'Content-Type': 'application/json'
        }

        #  criar um usuario
        @criar = Criar.post('/users', body: @body, headers: @header)
        puts @criar.body
        #pegando token do usuario que gerou qd ele foi criado
        puts @criar.parsed_response['data']['attributes']['auth-token']


        #criando requisição para fazer loogin
        @body_one = {
            sessions:{
                email: @email,
                password: '123456'
            }        
        }.to_json

        #e passamos o token que foi criado para logar
        @header_one = {
            Accept: 'application/vnd.tasksmanager.v2',
         'Content-Type': 'application/json',
         #para token aleatorio
            Authorization: "#{@criar.parsed_response['data']['attributes']['auth-token']}"
         #para token unico   
         #   Authorization: "5df4s6df4e5fr1s5"
        }

        @login = Criar.post('/sessions', body: @body_one, headers: @header_one)
        puts @login.body
    end
end    
