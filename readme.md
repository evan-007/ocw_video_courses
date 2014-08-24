#OpenCourse scraper

Which MIT Open Courseware classes have lecture videos available?

A fun and simple ruby script with tests. Requires `nokogiri`

## Usage

    require './course_finder'
    require './course_parser'

    courses = CourseFinder.new
    courses.all_courses

    gets all courses from OCW electrical engineering/comp sci homepage
    stores them in a set

    CourseParser.new(courses.all_courses)
    CourseParser.video_courses

    checks to see if a course has video lectures available
    stores the results in a set

    CourseParser.results


Will probably work for other department's courses if the initalization url is changed
in CourseFinder.

Run the tests `rspec spec/'
