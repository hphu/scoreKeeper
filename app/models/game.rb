class Game < ActiveRecord::Base
	has_one :winner, class_name: "player"
	has_one :loser, class_name: "player"
end
