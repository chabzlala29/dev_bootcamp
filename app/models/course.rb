class Course < ApplicationRecord
  has_many :lessons, -> { order(:position) }, dependent: :destroy

  def self.ransackable_associations(auth_object = nil)
    ["lessons"]
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[created_at description id id_value published title updated_at]
  end
end
