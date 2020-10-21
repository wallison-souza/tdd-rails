describe 'Teste Double' do

  it '--' do
    user = double('User')
    allow(user).to receive_messages(name: 'Jack', password: 'secret')
    user.name
  end
end