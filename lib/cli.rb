class CLI
    def run
        Scraper.scrape_information
        system('clear')
         greeting
         while menu != 'exit'
         end 
         end_program
    end

    def greeting
        puts "Welcome to the Top Selling Video Games CLI Tracker!"
    end

    def end_program
        puts "Thanks, See you later"
    end

    def menu 
        puts "Would you like to see the top selling video games all time?"
        puts "Type yes if you do! Type exit if not"
        input= gets.chomp
        choose_option(input)
        return input 
    end


    def choose_option(input)
        case input
        when "yes"
            puts "Here they are!"
            Games.all.each_with_index do |games, i|
                puts "#{i + 1}. #{games.name} sales: #{games.sales}"
            end
        end
    end
end