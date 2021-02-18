describe 'fazer requisicao' do
    context 'para alterar dados com' do
        it 'put' do
            @body_put = {
                "id": 2539,
                "name": "leticia gabrillle",
                "last_name": "silva",
                "email": "leticiao@gmail.com",
                "age": "27",
                "phone": "1537708445",
                "address": "Rua5775s",
                "state": "M774tghfgrais",
                "city": "B345345-hfghhte"
            }.to_json

            @requisicao_put = Contato.put('/contacts/2539', body: @body_put)
            puts @requisicao_put
        end

        it 'patch' do
            @body_patch = {
                "id": 24,
                "name": "eu conseguiiiii maiks uma veiiiissssss",
                "last_name": "mudarrrr",
                "email": "aquiikkkk@gmail.com",
            }.to_json

            @requisicao_patch = Contato.patch('/contacts/24', body: @body_patch)
            puts @requisicao_patch
        end    
    end    
end
