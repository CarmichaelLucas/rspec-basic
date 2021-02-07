class Person
  def initialize(name:, age:)
    @name = name.to_s
    @age = age.to_i
  end

  def first_name
    @name.split(' ').first
  end

  def last_name
    @name.split(' ').last
  end

  def adult?
    @age >= 18
  end
end