# frozen_string_literal: true

class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def multiply(num1, num2)
    num1 * num2
  end

  def divide(num1, num2)
    raise StandardError, 'Cannot Divide by 0' if num2.zero?

    num1.to_f / num2
  end
end
