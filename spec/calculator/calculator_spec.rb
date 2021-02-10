$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/calculator/")

require 'calculator'

RSpec.describe Calculator do
  describe 'Sum' do
    it '#for 2 numbers' do
      c = Calculator.new
      res = c.sum(5, 6)

      expect(res).to eq(11)
    end

    it '#for 3 numbers' do
      c = Calculator.new
      res = c.sum(5, 3, 3)

      expect(res).to eq(11)
    end

    it '#for 4 numbers' do
      c = Calculator.new
      res = c.sum(2, 3, 1, 5)

      expect(res).to eq(11)
    end

    it '#for 0 number' do
      c = Calculator.new
      res = c.sum()

      expect(res).to be(nil)
    end
  end
  
end