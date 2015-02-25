require "rails_helper"


feature "adding a post", %{
  As a user
  I want to be able to post a question or information
  So that I can get help or share information
  } do

  # Acceptance Criteria:
  # [] Must be able to post a question or information
  # [] Must select what type of post it is
  # [] Must be able to assign relevant tags
  # [] After posting, be shown the post
  # [] Must be signed in to create a post

  it "adds a question post" do
    visit "posts#index"

    click_on "New Post"

    select("Question", from: "post_type")
    fill_in "title", with: "Test title"
    fill_in "text", with: "This is a test"

    click_on "Submit"

    expect(page).to have_content("Test title")
    expect(page).to have_content("This is a test")

  end
end
