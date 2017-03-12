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


end
