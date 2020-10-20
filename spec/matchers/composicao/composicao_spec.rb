describe 'Ruby on Rails' do
  it {is_expected.to start_with('Ruby').and end_with('Rails')}
  it {expect(frutas).to eq('banana').or eq('uva').or eq('laranja')}


  # def frutas #helper metodo arbritario
  #   %w(banana laranja uva).sample
  # end
end