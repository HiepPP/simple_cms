class Author < ApplicationRecord
  has_many :book
  validates :name, presence: true, length: {minimum: 2}
end
