require 'rails_helper'

RSpec.describe "entries/new", type: :view do
  before(:each) do
    assign(:entry, Entry.new(
      :bracket_group => nil,
      :starting_lane => 1,
      :entry_count => 1,
      :paid => false,
      :rejected_count => 1,
      :refunded => false,
      :average => 1,
      :bowler => nil
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input#entry_bracket_group_id[name=?]", "entry[bracket_group_id]"

      assert_select "input#entry_starting_lane[name=?]", "entry[starting_lane]"

      assert_select "input#entry_entry_count[name=?]", "entry[entry_count]"

      assert_select "input#entry_paid[name=?]", "entry[paid]"

      assert_select "input#entry_rejected_count[name=?]", "entry[rejected_count]"

      assert_select "input#entry_refunded[name=?]", "entry[refunded]"

      assert_select "input#entry_average[name=?]", "entry[average]"

      assert_select "input#entry_bowler_id[name=?]", "entry[bowler_id]"
    end
  end
end
