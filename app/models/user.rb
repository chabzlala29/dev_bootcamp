class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { student: 0, admin: 1 }

  has_many :lesson_progresses, dependent: :destroy
  has_many :completed_lessons, through: :lesson_progresses, source: :lesson

  def self.ransackable_attributes(auth_object = nil)
    %w[created_at email id id_value role updated_at reset_password_token]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[lesson_progresses completed_lessons]
  end
end
