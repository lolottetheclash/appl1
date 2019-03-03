require 'rails_helper'

RSpec.describe "avis/edit", type: :view do
  before(:each) do
    @avi = assign(:avi, Avi.create!(
      :title => "MyString",
      :content => "MyString",
      :author => "MyString",
      :rate => 1
    ))
  end

  it "renders the edit avi form" do
    render

    assert_select "form[action=?][method=?]", avi_path(@avi), "post" do

      assert_select "input[name=?]", "avi[title]"

      assert_select "input[name=?]", "avi[content]"

      assert_select "input[name=?]", "avi[author]"

      assert_select "input[name=?]", "avi[rate]"
    end
  end
end
