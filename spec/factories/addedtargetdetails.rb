# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :addedtargetdetail do
    addobserve_target "MyString"
    addconfig "MyString"
    addflags "MyString"
    addobserve_orb "MyString"
    proposal_id 1
  end
end
