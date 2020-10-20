require 'pessoa'

describe 'Atributos' do
  # before(:each) do #HOOKS
  #   @pessoa = Pessoa.new
  # end
  #
  # after(:each) do
  #   @pessoa.nome = 'Sem nome'
  #   puts ">>>>>>>>>>>>>>>> #{@pessoa.inspect}"
  # end

  around(:each) do |teste|
    puts 'Antes'
    @pessoa = Pessoa.new

    teste.run

    puts 'Depois'
    @pessoa.nome = 'Sem nome'
    puts ">>>>>>>>>>>>>>>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'Jackson'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: 'Jackson', idade: 20)
  end

  it 'have_attributes mixed' do
    @pessoa.nome = 'Jackson'
    @pessoa.idade = 20

    expect(@pessoa).to have_attributes(nome: start_with('J'), idade: (be >= 20))
  end
end