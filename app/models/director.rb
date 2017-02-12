class Director < ApplicationRecord
 # name: must be present; must be unique in combination with dob
 validates :name, :presence => true, :uniqueness => {:scope => :dob}

 # dob: no rules
 # bio: no rules
 # image_url: no rules

 #Director.find_by(id: m.director_id).name
 #d = Director.find_by(name: "Francis Ford Coppola")
 #Movie.where(director_id: 2).count
 #Movie.where(director_id: 2).order("year DESC").first
 has_many(:movies, class_name: "Movie", foreign_key: "director_id" )

end
