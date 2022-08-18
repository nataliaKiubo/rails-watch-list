class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :bookmarks
  has_and_belongs_to_many :bookmarks
  validates :title, :overview, uniqueness: true, presence: true
end
