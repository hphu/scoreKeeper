class Party < ActiveRecord::Base
	has_many :players
	has_many :games
	validates :name, presence: true, length: {minimum: 3}
end
