require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should validate_presence_of(:password) }
  end

  describe 'associations' do
    it { should have_many(:lesson_progresses).dependent(:destroy) }
    it { should have_many(:completed_lessons).through(:lesson_progresses).source(:lesson) }
  end

  describe 'database columns' do
    it { should have_db_column(:email).of_type(:string) }
    it { should have_db_column(:encrypted_password).of_type(:string) }
    it { should have_db_column(:role).of_type(:integer) }
  end

  describe 'indexes' do
    it { should have_db_index(:email).unique }
  end
end