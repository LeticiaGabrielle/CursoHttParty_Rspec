describe 'fazer uma requisição' do

    #para chamar so essa requisicao 
    # rspec spec/nomedoarquivo_spec.rb

    it 'get' do
        # se nao usar o modulo (service) se chamaria o httparty assim:
        #@primeiraopcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
        #puts @primeiraopcao

        #usando uma variavel global e chamando somente os end points
        @melhor_opcao = Contato.get('/contacts/2802')
        puts @melhor_opcao
    end
end        