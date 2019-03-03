require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :title => "MyString",
      :content => "MyString",
      :author => "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[title]"

      assert_select "input[name=?]", "comment[content]"

      assert_select "input[name=?]", "comment[author]"
    end
  end
end
