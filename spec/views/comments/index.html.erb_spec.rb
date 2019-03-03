require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author"
      ),
      Comment.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
