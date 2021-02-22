$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/")

require 'course/course'
require 'student/student'

describe 'Mocks' do
  
  #setup
  let(:student) { Student.new }

  it '#bar' do
    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end
  
  it 'Argumentos' do
    expect(student).to receive(:foo).with('Lucas')
    
    student.foo('Lucas')
  end
  
  it 'Repetições' do
    expect(student).to receive(:foo).with('Lucas').twice #duas vezes eh esperado a execução

    student.foo('Lucas')
    student.foo('Lucas')
    #student.foo('Lucas')
  end
  
  it 'Retorno', :mocks do
    expect(student).to receive(:foo).with('Lucas').and_return("It's Ok!")

    student.foo('Lucas')

    #expect(student.foo('Lucas')).to eq("It's Ok!")
  end
  

end
