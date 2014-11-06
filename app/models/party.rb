class Party < ActiveRecord::Base
	has_many :player
	has_many :game
	validates :name, presence: true, length: {minimum: 3}
end
