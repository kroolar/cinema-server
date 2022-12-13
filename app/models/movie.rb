class Movie < ApplicationRecord
  CATEGORIES = [
    'Action',
    'Comedy',
    'Drama',
    'Fantasy',
    'Horror',
    'Mystery',
    'Romance',
    'Thriller'
  ]

  YEARS = 1895..Date.current.year

  validates :title, :category, :year, presence: true
  validates :title, uniqueness: { scope: :year }
  validates :title, length: { minimum: 3 }
  validates :category, inclusion: { in: CATEGORIES }
  validates :year, numericality: { only_integer: true, in: YEARS }
end
