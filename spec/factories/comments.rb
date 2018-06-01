FactoryBot.define do
  factory :comment do
    title "MyString"
    body "MyString"
    user
    post
  end
end
