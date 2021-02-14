describe 'Predicados' do
  
  it '#be_odd' do
    expect(1).to be_odd
  end
  
  it '#be_even' do
    expect(2).to be_even    
  end

  it '#be_empty' do
    expect('').to be_empty   
  end
  
  it '#be_zero' do
    expect(0).to be_zero
  end
  
  it '#be_nil' do
    expect(nil).to be_nil
  end
  

end
