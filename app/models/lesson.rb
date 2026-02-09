class Lesson < ApplicationRecord
  belongs_to :course
  has_many :lesson_progresses, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    ["content", "course_id", "created_at", "free", "id", "id_value", "position", "title", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["course", "lesson_progresses"]
  end
end
