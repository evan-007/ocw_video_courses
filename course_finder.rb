require 'open-uri'
require 'nokogiri'
require 'set'

class CourseFinder
  attr_accessor :url, :results
  def initialize
    @url = 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/'
    @results = Set.new
  end

  def all_courses
    page = Nokogiri::HTML(open(self.url))
    page.css('.preview').each do |link|
      full_link = 'http://ocw.mit.edu'+"#{link['href']}"
      self.results.add(full_link) 
    end
  end
end
