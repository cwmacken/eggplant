# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :submission do
    submitter "MyString"
    submitted 1
    copy "MyString"
    winner false
  end
end
