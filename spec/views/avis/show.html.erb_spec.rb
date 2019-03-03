require 'rails_helper'

RSpec.describe "avis/show", type: :view do
  before(:each) do
    @avi = assign(:avi, Avi.create!(
      :title => "Title",
      :content => "Content",
      :author => "Author",
      :rate => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/2/)
  end
end
