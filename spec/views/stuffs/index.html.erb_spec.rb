require 'spec_helper'

describe "stuffs/index" do
  before(:each) do
    assign(:stuffs, [
      stub_model(Stuff,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Stuff,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of stuffs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
