class Game < ActiveRecord::Base
	belongs_to :party
	belongs_to :winner, class_name: "Player"
	belongs_to :loser, class_name: "Player"
	validates :winner_id, presence: true, uniqueness: { scope: :loser_id, message: " cannot be loser!" }
	validates :loser_id, presence: true
end
