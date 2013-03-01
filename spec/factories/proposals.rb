# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :proposal do
    title "MyString"
    pi_name "MyString"
    pi_inst "MyString"
    pi_country "MyString"
    pi_email "MyString"
    coi_name "MyString"
    coi_inst "MyString"
    coi_country "MyString"
    coi_email "MyString"
    prop_category "MyString"
    sci_category "MyString"
    keyword1 "MyString"
    keyword2 "MyString"
    keyword3 "MyString"
    instrument "MyString"
    prop_period 1
    prime_orb 1
    par_orb 1
    cycle 1
    abstract "MyText"
    target "MyString"
    ra "MyString"
    dec "MyString"
    magnitude "MyString"
    observe_target "MyString"
    config "MyString"
    flags "MyString"
    observe_orb 1
    sci_justify "MyText"
    description "MyText"
    special_req "MyText"
    coord_obs "MyText"
    justify_dup "MyText"
    past_usage "MyText"
    prop_pdf ""
  end
end
