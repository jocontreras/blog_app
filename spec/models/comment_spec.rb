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

  describe 'Factory Application' do
    it 'should have valid Factory format' do
      expect(FactoryGirl.create(:comment, article_id: @factory_article.id)).to be_valid
    end

    it 'should have a valid Factory with email format' do
      expect(FactoryGirl.create(:comment, article_id: @factory_article.id, email: 'jen.almarasy@gmail.com')).to be_valid
    end
  end

=begin
  describe 'Email Validation' do
  it 'email with invalid format is invalid' do
      user = Comment.new(email: 'jen.almarasygmail.com', )
      user.save
      #expect(user.errors[:email]).to eq(['is invalid'])
      expect(user.errors.get(:email)).to eq(['is invalid'])
    end
  end
=end


end
