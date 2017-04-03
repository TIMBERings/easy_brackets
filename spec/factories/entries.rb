FactoryGirl.define do
  factory :entry do
    bracket_group nil
    starting_lane 1
    entry_count 1
    paid false
    rejected_count 1
    refunded false
    average 1
    bowler nil
  end
end
