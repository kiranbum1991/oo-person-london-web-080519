# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = happiness
       
    end

    def happiness #getter method
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
        @happiness = @happiness
    end

    def hygiene #getter method
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene = @hygiene
    end

    def happy?
       self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid (salary)
      self.bank_account += salary
      "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      "♪ another one bites the dust ♫"
    end

    def call_friend (friend)
       friend.happiness += 3
       self.happiness += 3
       "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation (person, conversation)
      if conversation == "politics"
        person.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
      elsif conversation == "weather"
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
end