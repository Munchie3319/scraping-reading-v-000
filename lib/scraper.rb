require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN")
