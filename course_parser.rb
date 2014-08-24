require 'set'
require 'open-uri'
require 'nokogiri'

class CourseParser 
  attr_reader :urls 
  attr_accessor :results

  def initialize(urls)
    @urls = Set.new(urls)
    @results = Set.new
  end

  def find_videos
    self.urls.each do |url|
      page = Nokogiri::HTML(open(url))
      features = page.css('.specialfeatures li')
      features.each do |feature|
        if feature.text.include?('video')
          self.results.add(url)
        end
      end
    end
  end
end
