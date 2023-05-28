class Review < ApplicationRecord
  include Visible

  belongs_to :course
end
