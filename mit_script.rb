require 'open-uri'
require 'nokogiri'
require 'set'

url = 'http://ocw.mit.edu/courses/electrical-engineering-and-computer-science/'

page = Nokogiri::HTML(open(url))
results = Set.new
page.css('.preview').each do |link|
  full_link = 'http://ocw.mit.edu'+"#{link['href']}"
  course_page = Nokogiri::HTML(open(full_link))

  body = course_page.css('#description')
  if body.text.include?('video')
    results.add full_link
  end
end
#  puts course_page

results.each do |result|
  File.open('results.txt', 'a+') do |f|
    f.puts result
  end
end 
    
