describe 'fazer requisicao' do
    it 'delete' do

        # forma simples -----  HTTParty.delete('https://api-de-tarefas.herokuapp.com/21)

        Contato.delete('/contacts/24')
    end
end