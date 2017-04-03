require 'rails_helper'

RSpec.describe "events/new", type: :view do
  before(:each) do
    assign(:event, Event.new(
      :name => "MyString",
      :winner_cut => "9.99",
      :runner_up_cut => "9.99",
      :organizer_cut => "9.99",
      :entry_cost => "9.99",
      :user => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_name[name=?]", "event[name]"

      assert_select "input#event_winner_cut[name=?]", "event[winner_cut]"

      assert_select "input#event_runner_up_cut[name=?]", "event[runner_up_cut]"

      assert_select "input#event_organizer_cut[name=?]", "event[organizer_cut]"

      assert_select "input#event_entry_cost[name=?]", "event[entry_cost]"

      assert_select "input#event_user_id[name=?]", "event[user_id]"
    end
  end
end
