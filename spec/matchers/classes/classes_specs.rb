require 'string_nao_vazia'

describe 'Matcher Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of Integer # Extamente o tipo da classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of String # Pode ser por herança
    expect(str).to be_kind_of StringNaoVazia # Pode ser por herança
  end

  it 'respond_to' do #verifica se responde a um determinado método
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count)
  end


  it 'be_an / be_a' do #mesma coisa que be_kind_of
    str = StringNaoVazia.new
    expect(str).to be_an String
    expect(str).to be_an StringNaoVazia

    expect(str).to be_a String
    expect(str).to be_a StringNaoVazia
  end
end