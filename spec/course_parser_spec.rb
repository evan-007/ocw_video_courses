require './course_parser'

RSpec.describe CourseParser do
  it 'initializes with a set' do
    @list = [1,2,3,4,4]
    @parser = CourseParser.new(@list)
    expect(@parser.urls.length).to eq 4
  end
  before do
    @videocourse = 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-00sc-introduction-to-computer-science-and-programming-spring-2011/'
    @course = 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-004-computation-structures-spring-2009/'
  end
  it 'returns courses with video content' do
    @parser = CourseParser.new([@videocourse, @course])
    @parser.find_videos
    expect(@parser.results).to eq Set.new([@videocourse])
  end
end
