
class Game < ActiveRecord::Base
	belongs_to :party
	belongs_to :loser, class_name: "Player"
	belongs_to :winner, class_name: "Player"
	validate :winner_not_equal_loser

	def winner_not_equal_loser
		errors.add(:base, "Winner != Loser") unless self.winner_id != self.loser_id
		
	end
end
