require 'spec_helper'

describe "sections/new" do
  before(:each) do
    assign(:section, stub_model(Section,
      :title => "MyString",
      :body => "MyText",
      :user_id => 1,
      :advicearea_id => 1
    ).as_new_record)
  end

  it "renders new section form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sections_path, "post" do
      assert_select "input#section_title[name=?]", "section[title]"
      assert_select "textarea#section_body[name=?]", "section[body]"
      assert_select "input#section_user_id[name=?]", "section[user_id]"
      assert_select "input#section_advicearea_id[name=?]", "section[advicearea_id]"
    end
  end
end
