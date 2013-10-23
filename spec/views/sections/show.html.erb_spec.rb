require 'spec_helper'

describe "sections/show" do
  before(:each) do
    @section = assign(:section, stub_model(Section,
      :title => "Title",
      :body => "MyText",
      :user_id => 1,
      :advicearea_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
