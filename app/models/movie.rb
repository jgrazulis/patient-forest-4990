class Movie < ApplicationRecord
  belongs_to :studio
  has many :movie_actor 
  has many :actors, through: :movie_actor
end
