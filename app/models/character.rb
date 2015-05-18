class Character < ActiveRecord::Base

    belongs_to :user 
    validates :user_id, presence: true
	validates :name, presence: true, length: {maximum: 255}
    has_many :character_race
    def is_lvl? 
    end 

end
