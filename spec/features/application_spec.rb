require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_link "About"
    expect(page).to have_content "About\nNothing much to say here"
  end
end
