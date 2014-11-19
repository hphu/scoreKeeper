class Party < ActiveRecord::Base
	has_many :players
	has_many :games
	validates :name, presence: true, length: {minimum: 3}

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      self.all
    end
  end

end
