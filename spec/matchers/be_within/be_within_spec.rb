describe 'be_within' do
  it { expect(12.5).to be_within(0.5).of(13) }
  it { expect([12.8, 13.1, 13.4]).to all ( be_within(0.5).of(13) ) }
end

# delta 0.5
# 12.5 - 12.6 - 12.7 - 12.8 - 12.9 - 13 - 13.1 - 13.2 - 13.3 - 13.4 - 13.5