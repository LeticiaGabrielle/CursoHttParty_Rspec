describe 'fazer uma requisição' do
    it 'get' do
        @melhor_opcao = Contato.get('/contacts/592')
        # puts @melhor_opcao
        # puts @melhor_opcao.code
        # expect(@melhor_opcao.code).to eq 200
        puts @melhor_opcao.body

        #para transformar em json
       
        #  puts @melhor_opcao.parsed_response['data']['attributes']['name']

        #para validar o retorno de um parametro/atributo
        expect(@melhor_opcao.parsed_response['data']['attributes']['name']).to eq 'samiry missy'
    end
end        
