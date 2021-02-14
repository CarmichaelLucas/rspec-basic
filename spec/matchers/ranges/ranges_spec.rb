describe (1..5), 'Ranges' do

  it '#cover' do
    expect(subject).to cover(4)
    expect(subject).not_to cover(0)
  end

  it { is_expected.to cover(2) }
  it { is_expected.not_to cover(0) }
end
