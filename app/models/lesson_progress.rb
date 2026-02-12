class LessonProgress < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

   def self.ransackable_attributes(auth_object = nil)
    %w[completed_at created_at id id_value lesson_id updated_at user_id]
  end
end