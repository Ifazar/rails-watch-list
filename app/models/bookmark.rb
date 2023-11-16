class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :list, uniqueness: { scope: :movie, message: 'already exists' }
  validates :comment, length: { minimum: 6 }
end
