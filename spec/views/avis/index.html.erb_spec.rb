require 'rails_helper'

RSpec.describe "avis/index", type: :view do
  before(:each) do
    assign(:avis, [
      Avi.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author",
        :rate => 2
      ),
      Avi.create!(
        :title => "Title",
        :content => "Content",
        :author => "Author",
        :rate => 2
      )
    ])
  end

  it "renders a list of avis" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
