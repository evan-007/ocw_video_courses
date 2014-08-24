#OpenCourse scraper

Which MIT Open Courseware classes have lecture videos available?

A fun and simple ruby script with tests. Requires `nokogiri`

## Usage
```ruby
    require './course_finder'
    require './course_parser'

    # gets all courses from OCW electrical engineering/comp sci hompage
    # stores results in a set

    courses = CourseFinder.new
    courses.all_courses

    # checks to see if a course has video lectures available
    # stores the results in a set

    CourseParser.new(courses.all_courses)
    CourseParser.video_courses

    CourseParser.results
```

Will probably work for other department's courses if the initalization url is changed
in CourseFinder.

Run the tests `rspec spec/'
