# frozen_string_literal: true

# frozen string_literal: true

feature 'case manager interactions' do
  scenario 'case manager opens a request' do
    resume_evaluation = FactoryGirl.create(:resume_evaluation)

    visit "/resume_evaluations/#{resume_evaluation.id}"
    expect(page).to have_content 'Microfavors Request'
    expect(page).to have_content "Name: #{resume_evaluation.name}"
  end
end
