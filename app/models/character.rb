class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show
  
    def actor
      Actor.find(actor_id)
    end
  
    def show
      Show.find(show_id)
    end
  
    def say_that_thing_you_say
      "#{name} always says: #{catchphrase}"
    end
  end