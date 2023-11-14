# frozen_string_literal: true

require './calculator'

RSpec.describe Calculator do
  describe '#add' do
    context 'when given positive numbers' do
      it 'returns the sum of two numbers' do
        calc = Calculator.new
        result = calc.add(5, 3)
        expect(result).to eq(8)
      end
    end
    context 'when given negative numbers' do
      it 'returns the sum of two numbers' do
        calc = Calculator.new
        result = calc.add(-5, -3)
        expect(result).to eq(-8)
      end
    end
  end
  describe '#subtract' do
    context 'when given positive numbers' do
      it 'returns the difference of two numbers' do
        calc = Calculator.new
        result = calc.subtract(5, 1)
        expect(result).to eq(4)
      end
    end
  end
end
