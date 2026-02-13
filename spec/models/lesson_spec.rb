require 'rails_helper'

RSpec.describe Lesson, type: :model do
  subject { build(:lesson) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
  end

  describe 'associations' do
    it { should belong_to(:course) }
    it { should have_many(:lesson_progresses).dependent(:destroy) }
  end

  describe 'database columns' do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:content).of_type(:text) }
    it { should have_db_column(:position).of_type(:integer) }
    it { should have_db_column(:free).of_type(:boolean) }
  end

  describe 'indexes' do
    it { should have_db_index(:course_id) }
  end
end