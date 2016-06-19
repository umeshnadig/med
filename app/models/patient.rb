class Patient < ActiveRecord::Base
  has_many :appointments
  validates :first_name, presence: true
  def full_name
    [first_name,last_name].join(' ')
  end
  def address
    [street, city].join(', ')
  end
  
  def self.search(search)
    where("first_name LIKE ?", "%#{search}%")
  end

  
end
