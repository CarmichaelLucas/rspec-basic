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
  
  it '#as_null_object', :test do
    user = double('User').as_null_object    
    allow(user).to receive(:name).and_return('Lucas')

    user.fulano
  end

end
