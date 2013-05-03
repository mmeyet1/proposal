# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :addedcoi do
    addcoi_name "MyString"
    addcoi_email "MyString"
    addcoi_inst "MyString"
    addcoi_country "MyString"
    proposal_id 1
  end
end
