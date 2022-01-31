class Movie < ApplicationRecord
  validates :title, :description, :duration, :release_date, :cast, presence: true
end
