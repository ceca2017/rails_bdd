FactoryGirl.define do
  factory :comment do
    comment "MyString"
    email "a@b.com"
    article
  end
end
