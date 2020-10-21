describe 'Teste Double' do

  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
    user.abc
  end
end