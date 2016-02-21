require 'rails_helper'

RSpec.describe "donation_cases/edit.html.erb", type: :view do
  before(:each) do
    @donation_case = assign(:donation_case, DonationCase.create!())
  end

  it "renders the edit donation_case form" do
    render

    assert_select "form[action=?][method=?]", donation_case_path(@donation_case), "post" do
      assert_select "input#donation_case_company_name[name=?]", "donation_case[company_name]"

      assert_select "input#donation_case_contact_name[name=?]", "donation_case[contact_name]"
    end
  end
end