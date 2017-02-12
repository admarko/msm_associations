class Actor < ApplicationRecord
  validates :name, :presence => true, :uniqueness => {:scope => :dob}

  #dob/bio/image no rules
  has_many(:characters, class_name: "Character", foreign_key: "actor_id" )
  has_many :movies, through: "characters"

end