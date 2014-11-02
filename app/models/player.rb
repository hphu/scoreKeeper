class Player < ActiveRecord::Base
	belongs_to :party
	validates :username, presence: true
end
