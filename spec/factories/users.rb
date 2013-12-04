# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "demandtest"
    name "demandtest"
    type "demand"
    email "demandtest@gmail.com"
    company "demandtest"
  end
end
