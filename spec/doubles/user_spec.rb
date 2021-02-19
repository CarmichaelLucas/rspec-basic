describe 'Test Double' do
  
  it '---' do
    user = double('User')

    allow(user).to receive_messages(name: 'Lucas', password: 123456)

    puts user.name
    puts user.password
  end
  
  it '___' do
    
    pessoa = double('Pessoa')

    allow(pessoa).to receive(:name).and_return('José Carlos')

    puts pessoa.name
  end
  

end
