# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    x 1
    y 1
    sequence 1
    session_id ""
  end
end
