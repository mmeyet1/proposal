# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :added_coi do
    addcoi_name "MyString"
    addcoi_inst "MyString"
    addcoi_country "MyString"
    addcoi_email ""
    proposal_id 1
  end
end
