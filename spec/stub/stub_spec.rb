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
end
