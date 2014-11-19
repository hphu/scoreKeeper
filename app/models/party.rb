class Party < ActiveRecord::Base
	has_many :player
	has_many :game
	validates :name, presence: true, length: {minimum: 3}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      self.all
    end
  end

end
