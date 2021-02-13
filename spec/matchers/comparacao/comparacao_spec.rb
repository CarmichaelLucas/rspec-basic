describe 'Matchers de Comparação' do

  it '#>' do
    expect(5).to be > 1
  end
  
  it '#>=' do
    expect(5).to be >= 2
    expect(5).to be >= 5
  end

  it '#<' do
    expect(1).to be < 5
  end

  it '#<=' do
    expect(1).to be <= 5
    expect(1).to be <= 1
  end

  it '#be_between inclusive' do
    expect(5).to be_between(2,7).inclusive
    expect(2).to be_between(2,7).inclusive
    expect(7).to be_between(2,7).inclusive
  end
  
  it '#be_between exclusive' do
    expect(5).to be_between(2,7).exclusive
    expect(3).to be_between(2,7).exclusive
    expect(6).to be_between(2,7).exclusive
  end

  it '#match' do
    expect('lucas@teste.com').to match(/..@../)
  end
  
  it '#start_with' do
    expect('Fulano de Tal').to start_with('Fulano')
    expect([2,1,3]).to start_with(2)
  end
  
  it '#end_with' do
    expect('Fulano de Tal').to end_with('Tal')
    expect([2,3,1]).to end_with(1)
  end
  

end
