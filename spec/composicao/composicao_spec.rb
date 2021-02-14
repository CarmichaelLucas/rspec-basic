describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails') }
  it { expect(frutas).to eq('banana').or eq('abacaxi').or eq('laranja') }

#  def frutas # helper methods arbitrários
#    %w(banana laranja abacaxi).sample
#  end
end