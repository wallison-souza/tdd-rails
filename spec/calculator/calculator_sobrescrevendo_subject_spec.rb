require 'calculator'

describe 'Classe Calculadora' do
  subject(:calc) { Calculator.new }

  context '#sum' do
    it 'with positive number' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end

    it 'with negative number' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)
    end
  end
end