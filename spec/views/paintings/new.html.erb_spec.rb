require 'spec_helper'

describe "paintings/new" do
  before(:each) do
    assign(:painting, stub_model(Painting,
      :gallery_id => 1,
      :name => "MyString",
      :description => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new painting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => paintings_path, :method => "post" do
      assert_select "input#painting_gallery_id", :name => "painting[gallery_id]"
      assert_select "input#painting_name", :name => "painting[name]"
      assert_select "input#painting_description", :name => "painting[description]"
      assert_select "input#painting_image", :name => "painting[image]"
    end
  end
end
