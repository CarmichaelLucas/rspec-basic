describe 'Around' do
  
  around(:each) do |test|
    @name = 'Maria'
    @filho = nil

    test.run #executa os teste

    @filho = 'Jesus'
  end

  it { expect(@name).not_to be_empty }
  it { expect(@name).to eq('Maria') }
  it { expect(@filho).to be_nil }
  
end
