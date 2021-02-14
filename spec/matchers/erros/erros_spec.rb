describe 'Erros' do
  
  it '#ZeroDivisionError' do
    expect { 1/0 }.to raise_error(ZeroDivisionError)
  end
  
  it '#NameError' do
    expect { x }.to raise_error(NameError)
  end

end
