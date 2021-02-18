describe 'fazer uma requisicao' do
    it 'post' do
        @body = 
        {
            "name": "leticia né??",
            "last-name": "bkkkkk4",
            "email": "roiii@gmail.com",
            "age": 23,
            "phone": "654895645616",
            "address": "Rua tres",
            "state": "Distrito federal",
            "city": "brasilia"
        }.to_json

        #FORMA SIMPLES PRA TESTAR A REQUISICAO httparty
        
#         @headers = {
#             "Accept": 'application/vnd.tasksmanager.v2',
#             'Content-Type': 'application/json'} 

#         @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
#         puts @request

        @request = Contato.post('/contacts', body: @body)
        puts @request

    end
end