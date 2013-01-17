require 'spec_helper'

describe "paintings/show" do
  before(:each) do
    @painting = assign(:painting, stub_model(Painting,
      :gallery_id => 1,
      :name => "Name",
      :description => "Description",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Image/)
  end
end
