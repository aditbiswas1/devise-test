require 'spec_helper'

describe "stuffs/new" do
  before(:each) do
    assign(:stuff, stub_model(Stuff,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new stuff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stuffs_path, :method => "post" do
      assert_select "input#stuff_name", :name => "stuff[name]"
      assert_select "textarea#stuff_description", :name => "stuff[description]"
    end
  end
end
