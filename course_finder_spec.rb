require './course_finder'

RSpec.describe CourseFinder do 

  #needs description
  it 'is a class' do
    @instance = CourseFinder.new
    expect(@instance.instance_of?(CourseFinder)).to eq true
  end

  it 'has results ' do
    expect(CourseFinder.new.results).to eq Set.new 
  end

  it 'has a url' do
    @instance = CourseFinder.new
    expect(@instance.url).to_not be nil
  end
  describe '.all_courses' do
    it 'adds links to .results' do
      @finder = CourseFinder.new
      @finder.all_courses
      expect(@finder.results.size).to_not be 0
    end 
  end
end
