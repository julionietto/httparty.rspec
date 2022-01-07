describe 'Fazer uma exclusão' do
    it 'delete' do
        Contato.delete('/contacts/98')
    end
end