class Course < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
