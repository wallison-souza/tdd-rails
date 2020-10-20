require 'calculator'

describe Calculator do
  # subject(:calc) { described_class.new() }

  context '#div' do
    it 'divide by 0' do
      # quando é necessario avaliar direto, pois o conteudo dentro do expect pode dar um erro
      # tem que se usar um bloco {} ao inves de ()
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error('divided by 0')
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{subject.div(3,0)}.to raise_error(/divided/)
    end
  end


  context '#sum' do
    it 'with positive number' do
      result = subject.sum(5,7)
      expect(result).to eq(12)
    end

    it 'with negative number' do
      result = subject.sum(-5,7)
      expect(result).to eq(2)
    end
  end
end