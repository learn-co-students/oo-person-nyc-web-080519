require 'pry'
class Person

  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene 
  
  @@minimum = 0
  @@maximum = 10 

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(change)
    if change > 10
      @happiness = 10
    elsif change < 0
       @happiness = 0
    else  
      @happiness = change
    end
    #binding.pry
    #@happine#s = [[@@maximum, change].min ,  @@minimum].max 
   
  end
  
  def hygiene=(change)
   if change > 10 
  @hygiene = 10
  elsif change < 0 
    @hygiene = 0 
  else 
    @hygiene = change 
  end 
# @hygiene = [[@@maximum, change].min ,  @@minimum].max 
  end
  
  def happy?
    @happiness > 7 ? true : false 
  end 

  def clean?
    @hygiene > 7 ? true : false 
  end 

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end 

  def take_bath
    bath = self.hygiene + 4
    self.hygiene=(bath)
    #binding.pry 
     "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    work_out_hygiene = self.hygiene - 3
    self.hygiene=(work_out_hygiene)
    work_out_happiness = self.happiness + 2
    self.happiness=(work_out_happiness)
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    call_self_happiness = self.happiness + 3
    self.happiness=(call_self_happiness)
    
    call_friend_happiness = friend.happiness + 3
    friend.happiness=(call_friend_happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      conversation_self_happiness = self.happiness - 2
    self.happiness=(conversation_self_happiness)
    
    conversation_friend_happiness = friend.happiness - 2
    friend.happiness=(conversation_friend_happiness)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      conversation_self_happiness = self.happiness + 1
    self.happiness=(conversation_self_happiness)
    
    conversation_friend_happiness = friend.happiness + 1
    friend.happiness=(conversation_friend_happiness)
      "blah blah sun blah rain"
    else
      'blah blah blah blah blah' 
    end

  end



end #class end