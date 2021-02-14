describe 'Satisfy' do
  it { expect(2).to be_even }
  it { expect(2).to satisfy('be a multiple of 2') { |value| value % 2 == 0 } }
  it { expect(21).to satisfy('be a multiple of 3') { |value| value % 3 == 0 } }
end
