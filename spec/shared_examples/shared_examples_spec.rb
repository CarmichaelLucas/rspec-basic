$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/pessoa/")

require 'pessoa'

shared_examples 'status' do |status|
  it "#{status}" do
    pessoa.send("#{status}!")
    expect(pessoa.status).to eq("Sentindo-se #{status}!")
  end
end

describe 'Pessoa' do

  subject(:pessoa) { Pessoa.new }

  include_examples 'status', :feliz
  it_behaves_like 'status', :triste
  it_should_behave_like 'status', :contente
end


