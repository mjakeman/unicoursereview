class Course < ApplicationRecord
  include Visible

  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}
end
