# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :target, :class => 'Targets' do
    adddec "MyString"
    addmagnitude "MyString"
    addra "MyString"
    addtarget "MyString"
  end
end
