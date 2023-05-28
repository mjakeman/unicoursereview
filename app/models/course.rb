class Course < ApplicationRecord
  has_many :reviews

  validates :title, presence: true
  validates :description, presence: true, length: {minimum: 10}

  VALID_STATUSES = ["current", "archived"]

  validates :status, inclusion: {in: VALID_STATUSES}

  def archived?
    status == "archived"
  end
end
