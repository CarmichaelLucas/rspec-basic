$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/calculator/")

require 'calculator'

RSpec.describe Calculator do

  subject(:c) { described_class.new() }

  describe 'Sum' do
    context '#positive numbers' do
      it 'for 2 numbers' do
        res = c.sum(5, 6)
  
        expect(res).to eq(11)
      end
  
      it 'for 3 numbers' do
        res = c.sum(5, 3, 3)
  
        expect(res).to eq(11)
      end
  
      it 'for 4 numbers' do
        res = c.sum(2, 3, 1, 5)
  
        expect(res).to eq(11)
      end
  
      it 'for 0 number' do
        res = c.sum()
  
        expect(res).to be(nil)
      end
    end
  end
  
end