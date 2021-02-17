RSpec::Matchers.define_negated_matcher :exclude, :include

describe 'Array' do

  it '#include' do
    expect([1,2,3,5,4]).to include(5, 1)  
  end

  it '#excude' do
    expect([1,2,3,5,4]).to exclude(0)
  end

  it '#match_array' do
    expect([1,3,5,7]).to match_array([1,3,5,7])  
  end
  
  it '#contain_exactly' do
    expect([1,2,3]).to contain_exactly(3,1,2)    
  end
  
end
