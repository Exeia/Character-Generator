class Character < ActiveRecord::Base

    belongs_to :user 
    validates :user_id, presence: true

    def is_lvl? 
    end 

end