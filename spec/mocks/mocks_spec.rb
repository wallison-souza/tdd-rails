require 'student'
require 'course'
describe 'Stubs' do
  it '#has_finished? ' do
    #setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end
end