describe [1,7,9] do
  it { is_expected.to all (be_odd).and be_an(Integer) }
  it { expect(['ruby', 'rails']).to all ( be_a(String).and include('r') ) }
end