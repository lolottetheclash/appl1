require 'rails_helper'

RSpec.describe "avis/new", type: :view do
  before(:each) do
    assign(:avi, Avi.new(
      :title => "MyString",
      :content => "MyString",
      :author => "MyString",
      :rate => 1
    ))
  end

  it "renders new avi form" do
    render

    assert_select "form[action=?][method=?]", avis_path, "post" do

      assert_select "input[name=?]", "avi[title]"

      assert_select "input[name=?]", "avi[content]"

      assert_select "input[name=?]", "avi[author]"

      assert_select "input[name=?]", "avi[rate]"
    end
  end
end
