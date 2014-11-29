class Player < ActiveRecord::Base
	belongs_to :party
	has_many :games
	validates :username, presence: true, :uniqueness => {:scope => :party_id}
end
