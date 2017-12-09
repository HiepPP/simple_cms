class Publisher < ApplicationRecord
  has_many :book
  validates :name, presence: true, length: {minimum: 3}, uniqueness: true
end
