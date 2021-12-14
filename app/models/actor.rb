class Actor < ApplicationRecord
    has_many :movie_actor
    has_many :movies, through: :movie_actor
end
