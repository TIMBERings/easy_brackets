require 'rails_helper'

RSpec.describe "bowlers/show", type: :view do
  before(:each) do
    @bowler = assign(:bowler, Bowler.create!(
      :starting_lane => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
