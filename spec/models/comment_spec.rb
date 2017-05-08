require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'Database columns' do
    it { is_expected.to have_db_column :comment }
    it { is_expected.to have_db_column :email }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :article }
  end

  describe 'Comment factory' do
    it 'should have a valid factory' do
      expect(FactoryGirl.create(:comment)).to be_valid
    end
  end

end
