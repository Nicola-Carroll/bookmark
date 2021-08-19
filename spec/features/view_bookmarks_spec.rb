feature "viewing bookmarks" do

  let(:bookmarks) { ['http://www.google.com/', 'http://www.makersacademy.com/'] }

  scenario "see bookmarks at the /bookmarks route" do
    visit("/")
    click_button("View Bookmarks")
    expect(page).not_to have_content "Hello World! Here are your bookmarks"
    expect(page).to have_content "Here is your list of bookmarks:"
  end

  scenario "returns a list of bookmarks at /bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com/');")

    visit("/")
    click_button("View Bookmarks")
    bookmarks.each do |url|
      expect(page).to have_content(url)
    end
  end

end