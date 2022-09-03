# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name, bank_account=25, happiness=8, hygiene=8
        @name=name
        @bank_account=bank_account
        @happiness=happiness
        @hygiene=hygiene
    end
    def happiness=(value)
        @happiness=value_limiter value
    end
    def hygiene=(value)
        @hygiene=value_limiter value
    end
    def value_limiter value
        if value > 10
            10
        elsif value < 1
            0
        else value
        end
    end
    def happy?
        self.happiness > 7   
    end

    def clean?
        self.hygiene > 7   
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫" 
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end
    def call_friend friend
        friend.happiness+=3
        self.happiness+=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation friend, topic
        case topic
        when "politics" 
            then 
                self.happiness -= 2
                friend.happiness -= 2
                "blah blah partisan blah lobbyist"
        when "weather"
            then
                self.happiness += 1
                friend.happiness += 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end


akin = Person.new ("Akin")

binding.pry
