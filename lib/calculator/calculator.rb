class Calculator
  def sum(*array)
    array.reduce { |number, prox| number + prox }
  end
end