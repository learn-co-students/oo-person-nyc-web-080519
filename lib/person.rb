require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end  # ends initialize method
  
    def happiness=(num)
      if num > 10
        num = 10
      elsif num < 0
        num = 0
      end
      @happiness = num
    end
  
  def hygiene=(num)
    if num > 10
      num = 10
    elsif num < 0
      num = 0
    end
    @hygiene = num
  end
  


  def clean?
    @hygiene > 7
  end  #ends Clean? method


  def happy?
    @happiness > 7
  end  #ends happy? method

  def get_paid(paycheck)
    @bank_account += paycheck
    "all about the benjamins"
  end #ends get_paid method

  def take_bath
    self.hygiene = @hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end  #ends take_bath method

  def work_out
    self.hygiene = @hygiene - 3
    self.happiness = @happiness + 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)

    self.happiness = @happiness + 3

    friend.happiness = friend.happiness + 3


    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = @happiness - 2
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = @happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"    
    end # ends topics if


  end  #ends start_convo method

end   # ends Person class