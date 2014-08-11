require "rails_helper"

feature "Applcation" do
  scenario "Can do stuff" do
    visit "/"

    expect(page).to have_content "Welcome"

    click_link "About"
    expect(page).to have_content "About\nNothing much to say here"

    visit "/"

    click_link "New gif"
    fill_in "Url", :with => 'http://media0.giphy.com/media/xscMM0IVJX20w/200_s.gif'
    fill_in "Title", :with => 'Sherlock'
    click_button "Create gif"
    expect(page).to have_content "Gif created successfully"

    expect(page).to have_content "Sherlock"
    page.should have_xpath("//img9@src=\"http://media0.giphy.com/media/xscMM0IVJX20w/200_s.gif\"]")


  end
end
