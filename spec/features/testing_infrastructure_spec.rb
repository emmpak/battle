
feature "Testing infrastructure" do
  scenario "checks if homepage says 'Testing infrastructure working!'" do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
