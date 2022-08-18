class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_and_belongs_to_many :bookmark
  validates :name, uniqueness: true, presence: true
end
