require 'open-uri'
require 'nokogiri'
require 'set'

class CourseFinder
  attr_accessor :url, :results, :courses
  def initialize
    @url = 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/'
    @results = Set.new
    @courses = Set.new
  end

  def all_courses
    page = Nokogiri::HTML(open(self.url))
    page.css('.preview').each do |link|
      full_link = 'http://ocw.mit.edu'+"#{link['href']}"
      self.courses.add(full_link) 
    end
  end
end
