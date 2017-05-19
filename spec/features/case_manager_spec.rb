# frozen_string_literal: true

feature 'case manager interactions' do
  scenario 'case manager opens a cover letter evaluation request' do
    cover_letter_evaluation = FactoryGirl.create(:cover_letter_evaluation)

    visit "/cover_letter_evaluations/#{cover_letter_evaluation.id}"
    expect(page).to have_content 'Microfavors Request'
    expect(page).to have_content "Name: #{cover_letter_evaluation.name}"
  end

  scenario 'case manager opens a qualification evaluation request' do
    qualification_evaluation = FactoryGirl.create(:qualification_evaluation)

    visit "/qualification_evaluations/#{qualification_evaluation.id}"
    expect(page).to have_content 'Microfavors Request'
    expect(page).to have_content "Name: #{qualification_evaluation.name}"
  end
end
