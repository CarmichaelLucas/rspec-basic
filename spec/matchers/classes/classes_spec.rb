describe 'Classes' do
  
  it '#be_instance_of' do
    expect(1).to be_instance_of(Integer)
    expect('Lucas').to be_instance_of(String)
    expect(1.04).to be_instance_of(Float)
  end
  
  it '#be_kind_of' do
    expect(StringNaoVazia.new).to be_kind_of(String)
    expect(StringNaoVazia.new).to be_kind_of(StringNaoVazia)
  end

  it '#respond_to' do
    expect([]).to respond_to(:each)    
  end
  
  it '#be_an / be_a' do
    expect(StringNaoVazia.new).to be_a(String)
    expect(StringNaoVazia.new).to be_a(StringNaoVazia)

    expect(StringNaoVazia.new).to be_an(String)
    expect(StringNaoVazia.new).to be_an(StringNaoVazia)
  end
  
  
end


class StringNaoVazia < String

  def initialize
    self << 'Ola'    
  end
  
end