feature 'Home page' do
  scenario 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Welcome'
  end

  scenario 'get resume feedback' do
    visit root_path
    expect(page).to have_content 'Welcome'

    click_on 'Resume feedback'
    expect(page).to have_content 'Get resume feedback'
  end
end
