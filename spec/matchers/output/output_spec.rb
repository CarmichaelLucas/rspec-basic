describe 'Matcher Output' do
  
  it { expect{ puts 'Lucas' }.to output.to_stdout }
  it { expect{ print 'Lucas' }.to output('Lucas').to_stdout }
  it { expect{ puts 'Lucas Santos' }.to output(/Lucas/).to_stdout }

  it { expect{ warn 'Lucas' }.to output.to_stderr }
  it { expect{ warn 'Lucas' }.to output("Lucas\n").to_stderr }
  it { expect{ warn 'Lucas Santos' }.to output(/Lucas/).to_stderr }

end
