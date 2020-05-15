require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scrapper
  def get_page
   doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
   #doc.css(".post").each do |post|
     #course = Course.new
     #course.title = post.css("h2").text
     #course.schedule = post.css(".date").text
     #course.description = post.css("p").text
   #end
 end

  def get_courses
   self.get_page.css(".post")
 end

  def make_courses
   self.get_courses.each do |post|
     course = Course.new
     course.title = post.css("h2").text
     course.schedule = post.css(".date").text
     course.description = post.css("p").text
   end
 end

def  print_courses
  self.make_courses
  Course.all.each do |course|
  end
end
end

end

Scrappr.new.print_courses
