$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/pessoa/")

require 'pessoa'

describe Pessoa, 'Atributos' do
  
  subject(:pessoa) { described_class.new() }

  it '#have_attributos' do
    
    pessoa.nome = 'Lucas'
    pessoa.idade = 26

    expect(pessoa).to have_attributes(nome: 'Lucas', idade: 26)
  end
  

end
