describe [1,7,9] do
  it {is_expected.to all((be_odd).and be_an(Integer))}

  it { expect(['Ruby', 'Rails']).to all( be_an(String).and include('R')) }
end