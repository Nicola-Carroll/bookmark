
feature "testing infastructure" do
  scenario "greets user" do
    visit("/")
    expect(page).to have_content "Hello World! Here are your bookmarks"
  end
end