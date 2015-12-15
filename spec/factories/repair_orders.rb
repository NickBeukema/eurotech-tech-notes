FactoryGirl.define do
  factory :repair_order do
    sequence(:number)
    recommendations "MyText"
    maintenance "MyText"
  end

end
