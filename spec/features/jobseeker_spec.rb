feature 'Jobseeker interactions' do
  before do
    visit root_path
    expect(page).to have_content 'Need help in a hurry with your job search?'
  end

  scenario 'get resume feedback' do
    click_on 'Resume Feedback'
    expect(page).to have_content 'Resume Help'

    click_get_help

    expect(page).to have_content 'Provide Your Resume'

    fill_in 'Name', with: 'Sandie Go'
    fill_in 'Email', with: 'sandie@go.com'

    click_submit
  end

  scenario 'answer common questions' do
    click_on 'Cover Letter Feedback'
    expect(page).to have_content 'Cover Letter Help'

    click_get_help

    expect(page).to have_content 'Provide Your Cover Letter'

    fill_in 'Name', with: 'Sandie Go'
    fill_in 'Email', with: 'sandie@go.com'

    click_submit
  end

  scenario 'am i qualified' do
    click_on 'Evaluate Job Qualifications'
    expect(page).to have_content 'Job Qualifications Help'

    click_get_help

    expect(page).to have_content 'Provide Your Resume and Desired Job'

    fill_in 'Name', with: 'Sandie Go'
    fill_in 'Email', with: 'sandie@go.com'
    fill_in 'Job posting', with: 'carpenter.com/jobs'

    click_submit
  end

  private

  def click_get_help
    click_on 'Get Help'
  end

  def click_submit
    click_on 'Submit'

    expect(page).to have_content 'What Happens Next'
  end
end
