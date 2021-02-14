$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/contador/")

require 'contador'

RSpec.describe 'Matcher Change' do
  
  it { expect{ Contador.incrementar }.to change { Contador.qtd } } # qtde => 1
  it { expect{ Contador.incrementar }.to change { Contador.qtd }.by(1) } # qtde => 2
  it { expect{ Contador.incrementar }.to change { Contador.qtd }.from(2).to(3) } # qtde => 3

end
