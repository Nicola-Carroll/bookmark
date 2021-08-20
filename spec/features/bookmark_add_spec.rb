feature "Adding a Bookmark " do
  it "allows user to add a bookmark" do
    visit ('/')
    click_button('Add new bookmark')
    fill_in('url', with: "www.randomwebsite.com")
    fill_in('title', with: "Random")
    click_button('Submit')
    expect(page).to have_content("Random")
  end
end