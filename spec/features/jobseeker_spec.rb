feature 'Jobseeker interactions' do
  before do
    visit root_path
    expect(page).to have_content 'Need help in a hurry with your job search?'
  end

  scenario 'get resume feedback' do
    click_on 'Resume Feedback'
    expect(page).to have_content 'Get resume feedback'

    fill_in 'Name', with: 'Sandie Go'
    fill_in 'Email', with: 'sandie@go.com'
  end

  scenario 'answer common questions' do
    click_on 'Common questions'
    expect(page).to have_content 'Answer common questions'
  end

  scenario 'am i qualified' do
    click_on 'Evaluate Job Qualifications'
    expect(page).to have_content 'Find out if you are qualified'
  end
end
