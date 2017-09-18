require 'rails_helper'

RSpec.describe Article, type: :model do

  before do
    @factory_article = FactoryGirl.create(:user)
  end
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { should belong_to :user}
  end

  describe 'Factory' do
    it 'should have valid Factory format' do
      expect(FactoryGirl.create(:article, user_id: @factory_article.id)).to be_valid
    end

  end
end
