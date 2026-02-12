require 'rails_helper'

RSpec.describe Course, type: :model do
  subject { build(:course) }

  describe 'validations' do
    it { should validate_presence_of(:title) }
  end

  describe 'associations' do
    it { should have_many(:lessons).dependent(:destroy) }
  end

  describe 'database columns' do
    it { should have_db_column(:title).of_type(:string) }
    it { should have_db_column(:description).of_type(:text) }
    it { should have_db_column(:published).of_type(:boolean) }
  end
end