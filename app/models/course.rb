class Course < ApplicationRecord
  has_many :lessons, -> { order(:position) }, dependent: :destroy
end
