feature 'Jobseeker interactions' do
  before do
    visit root_path
    expect(page).to have_content 'Welcome'
  end

  scenario 'get resume feedback' do
    click_on 'Resume feedback'
    expect(page).to have_content 'Get resume feedback'
  end

  scenario 'answer common questions' do
    click_on 'Common questions'
    expect(page).to have_content 'Answer common questions'
  end

  scenario 'am i qualified' do
    click_on 'Am I qualified for this job?'
    expect(page).to have_content 'Find out if you are qualified'
  end
end
