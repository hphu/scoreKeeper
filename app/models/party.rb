class Party < ActiveRecord::Base
	has_many :player
	has_many :game
end
