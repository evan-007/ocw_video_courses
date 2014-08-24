require './course_finder'

RSpec.describe CourseFinder do 
  #needs description
  it 'is a class' do
    @instance = CourseFinder.new
    expect(@instance.instance_of?(CourseFinder)).to eq true
  end
  it 'has a url' do
    @instance = CourseFinder.new
    expect(@instance.url).to_not be nil
  end
end
