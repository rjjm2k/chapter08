require 'spec_helper'

describe "paintings/edit" do
  before(:each) do
    @painting = assign(:painting, stub_model(Painting,
      :gallery_id => 1,
      :name => "MyString",
      :description => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit painting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paintings_path(@painting), :method => "post" do
      assert_select "input#painting_gallery_id", :name => "painting[gallery_id]"
      assert_select "input#painting_name", :name => "painting[name]"
      assert_select "input#painting_description", :name => "painting[description]"
      assert_select "input#painting_image", :name => "painting[image]"
    end
  end
end
