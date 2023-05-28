class Review < ApplicationRecord
  belongs_to :course

  VALID_STATUSES = ["public", "hidden"]

  validates :status, inclusion: {in: VALID_STATUSES}

  def hidden?
    status == "hidden"
  end
end
