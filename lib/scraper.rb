require 'pry'
require 'nokogiri'
require 'open-uri'
require 'json'
require_relative "games.rb"

class Scraper
    SCRAPE_URL = "https://en.wikipedia.org/wiki/List_of_best-selling_video_games"
    
    def self.scrape_games
    puts "Scraping top Video Games..."
    doc = Nokogiri::HTML(URI.open(SCRAPE_URL))

    doc.css('tbody tr')[8..33].each do |video_game_row|
        row = video_game_row.css("td")
        name = row[2].text.split(" ").join("")
        sales = row[1].text.split(" ").join("")
        Games.new(name, sales)
    end
end
    def self.scrape_information
        scrape_games
    end
end

Scraper.scrape_games