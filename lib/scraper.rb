require 'pry'
require 'nokogiri'
require 'open-uri'
require 'json'

class Scraper
    doc = Nokogiri::HTML(URI.open("https://en.wikipedia.org/wiki/List_of_best-selling_video_games"))

end

binding.pry