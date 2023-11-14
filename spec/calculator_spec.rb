# frozen_string_literal: true

require './calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  describe '#add' do
    context 'when given positive numbers' do
      it 'returns the sum of two numbers' do
        result = calc.add(5, 3)
        expect(result).to eq(8)
      end
    end
    context 'when given negative numbers' do
      it 'returns the sum of two numbers' do
        result = calc.add(-5, -3)
        expect(result).to eq(-8)
      end
    end
  end
  describe '#subtract' do
    context 'when given positive numbers' do
      it 'returns the difference of two numbers' do
        num1 = 5
        num2 = 1
        result = calc.subtract(num1, num2)
        expect(result).to eq(4)
        expect(result).to be < num1
      end
    end
  end
  describe '#multiply' do
    context 'when given two positive numbers' do
      it 'returns the product of two numbers' do
        expect(calc.multiply(2, 2)).to eq(4)
      end
    end
  end
  describe '#divide' do
    context 'when given two positive numbers' do
      it 'returns a float for nonzero division' do
        expect(calc.divide(10, 3)).to be_a(Float)
        expect(calc.divide(10, 3)).to be_within(0.01).of(3.33)
      end
      it 'returns a truthy value when not dividing by zero' do
        expect(calc.divide(10, 1)).to be_truthy
      end
      it 'does not return nil' do
        expect(calc.divide(10, 1)).not_to be_nil
      end
    end
    context 'errors' do
      it 'raises an error when dividing by zero' do
        expect { calc.divide(10, 0) }.to raise_error(StandardError, 'Cannot Divide by 0')
      end
    end
  end
end
