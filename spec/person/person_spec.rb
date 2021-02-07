$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/person/")

require 'person'

RSpec.describe Person do 

  describe '#first_name' do
    it 'returns first part of the name' do 
      person = Person.new(name: 'John Doe', age: 21)

      expect(person.first_name).to eq('John')
    end
  end

  describe '#last_name' do
    it 'returns last part of the name' do
      person = Person.new(name: 'John Doe', age: 21)

      expect(person.last_name).to eq('Doe')
    end
  end

  describe '#adult?' do
    it 'returns true when a person is more than 17 years old' do
      person = Person.new(name: 'John Doe', age: 21)

      expect(person.adult?).to eq(true)
    end

    it 'returns false when a person is more than 17 years old' do
      person = Person.new(name: 'John Doe', age: 17)

      expect(person.adult?).to eq(false)
    end    
  end
  
end