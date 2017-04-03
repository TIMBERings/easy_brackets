require 'rails_helper'

RSpec.describe "entries/index", type: :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :bracket_group => nil,
        :starting_lane => 2,
        :entry_count => 3,
        :paid => false,
        :rejected_count => 4,
        :refunded => false,
        :average => 5,
        :bowler => nil
      ),
      Entry.create!(
        :bracket_group => nil,
        :starting_lane => 2,
        :entry_count => 3,
        :paid => false,
        :rejected_count => 4,
        :refunded => false,
        :average => 5,
        :bowler => nil
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
