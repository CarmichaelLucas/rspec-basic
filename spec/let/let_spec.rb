$count = 0

describe 'Let and Let!' do

  let!(:contador) { $count += 2 }
  let(:user) { User.new('Lucas') }

  it { expect($count).to eq(2) }
  it { expect(user.name).not_to be_empty }
  it { expect(user.name).to eq('Lucas') }
  it { expect($count).to eq(8) }

end


class User

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end
