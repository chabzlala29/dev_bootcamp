require 'rails_helper'

RSpec.describe LessonProgress, type: :model do
  subject { build(:lesson_progress) }

  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:lesson) }
  end

  describe 'database columns' do
    it { should have_db_column(:completed_at).of_type(:datetime) }
  end

  describe 'indexes' do
    it { should have_db_index(:user_id) }
    it { should have_db_index(:lesson_id) }
  end
end