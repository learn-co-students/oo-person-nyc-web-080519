# your code goes here
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
       @happiness = value 
        if @happiness  > 10 
            @happiness =  10
        elsif @happiness  < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        @hygiene = value 
        if @hygiene  > 10 
            @hygiene =  10
        elsif @hygiene  < 0
            @hygiene = 0
        end
        
        return @hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        return 'all about the benjamins'
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

    def start_conversation(person, topic)
        objects = [self, person]
        if topic == "politics"
            objects.each { |o| o.happiness -= 2}
            first, second = ["partisan", "lobbyist"]
        elsif topic == "weather"
            objects.each { |o| o.happiness += 1}
            first, second = ["sun", "rain"]
        end
        first ||= "blah"
        second ||= "blah"
        base_string = "blah blah #{first} blah #{second}"
  end

  def call_friend(f)
    [f, self].each {|o| o.happiness += 3 }
    "Hi #{f.name}! It's #{self.name}. How are you?"
  end

end 