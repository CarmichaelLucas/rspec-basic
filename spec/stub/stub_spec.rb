$LOAD_PATH.unshift("{File.dirname(__FILE__)}/../lib/")

require 'course/course'
require 'student/student'

describe 'Stub' do
  
  let(:student) { Student.new }
  let(:course) { Course.new }
  
  it '#has_finished?' do
    
    allow(student).to receive(:has_finished?)
      .with(an_instance_of(Course))
      .and_return(true)

    course_finished = student.has_finished?(course)

    expect(course_finished).to be_truthy
  end

  it 'Argumentos Dinamicos' do
    
    allow(student).to receive(:foo) do |arg|
      if arg.eql?(:hello)
        "Ola"
      elsif arg.eql?(:hi)
        "Oi"
      end    
    end

    expect(student.foo(:hello)).to eq("Ola")
    expect(student.foo(:hi)).to eq("Oi")

  end

  let(:other) { Student.new }

  it 'Qualquer instância de Classe' do

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other.bar).to be_truthy
 
  end
  
  it 'Erros', :oi do
    allow(student).to receive(:bar).and_raise(RuntimeError)
    
    expect { student.bar }.to raise_error(RuntimeError)
  end
  
  
end
