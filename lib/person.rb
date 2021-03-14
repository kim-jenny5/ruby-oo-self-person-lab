class Person

    attr_accessor :bank_account
    attr_reader :happiness, :hygiene, :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(happiness)
        if happiness >= 10
            return @happiness = 10
        elsif happiness < 0
            return @happiness = 0
        end
        @happiness = happiness
    end

    def hygiene=(hygiene)
        if hygiene >= 10
            return @hygiene = 10
        elsif hygiene < 0
            return @hygiene = 0
        end
        @hygiene = hygiene
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # @hygiene += 4
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
        # "Hi #{self.name}! It's #{friend.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end