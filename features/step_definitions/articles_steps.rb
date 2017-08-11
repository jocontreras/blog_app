Given(/^the following articles exists$/) do |table|
  table.hashes.each do |hash|
    FactoryGirl.create(:article, hash)
  end
end
