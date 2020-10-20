describe 'Matcher igualdade' do
  it '#eqaul' do
    x ='ruby'
    y ='ruby'

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  it '#eqaul' do
    x ='ruby'
    y ='ruby'

    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  it '#eqaul' do
    x ='ruby'
    y ='ruby'

    expect(x).to eql(y)
  end

  it '#eqaul' do
    x ='ruby'
    y ='ruby'

    expect(x).to eq(y)
  end
end