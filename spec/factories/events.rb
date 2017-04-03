FactoryGirl.define do
  factory :event do
    name "MyString"
    date "2017-04-03"
    winner_cut "9.99"
    runner_up_cut "9.99"
    organizer_cut "9.99"
    entry_cost "9.99"
    user nil
  end
end
