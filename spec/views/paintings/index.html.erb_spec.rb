require 'spec_helper'

describe "paintings/index" do
  before(:each) do
    assign(:paintings, [
      stub_model(Painting,
        :gallery_id => 1,
        :name => "Name",
        :description => "Description",
        :image => "Image"
      ),
      stub_model(Painting,
        :gallery_id => 1,
        :name => "Name",
        :description => "Description",
        :image => "Image"
      )
    ])
  end

  it "renders a list of paintings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
