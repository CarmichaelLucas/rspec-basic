class Calculator
  def sum(*array)
    array.reduce { |soma, number| soma + number }
  end
end