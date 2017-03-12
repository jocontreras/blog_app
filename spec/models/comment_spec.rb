require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @factory_article = FactoryGirl.create(:article)
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id}
    it { is_expected.to have_db_column :body}
    it { is_expected.to have_db_column :email}
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_presence_of :article_id }
    it { should belong_to :article}
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryGirl.create(:article)).to be_valid
    end
  end


end
