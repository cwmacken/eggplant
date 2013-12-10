# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :campaign do
    owner "MyString"
    start 1
    ending 1
    description "MyString"
  end
end
