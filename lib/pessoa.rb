class Pessoa
  attr_accessor :nome, :idade, :status

  def feliz!
    @status = 'Sentindo-se feliz!'
  end
  def triste!
    @status = 'Sentindo-se triste!'
  end
  def contente!
    @status = 'Sentindo-se contente!'
  end
end