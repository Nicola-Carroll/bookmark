feature "Adding a Bookmark " do
  it "allows user to add a bookmark" do
    visit ('/')
    click_button('Add new bookmark')
    fill_in('new bookmark', with: "www.randomwebsite.com")
    click_button('Submit')
    expect(page).to have_content("www.randomwebsite.com")
  end
end