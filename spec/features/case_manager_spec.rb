# frozen_string_literal: true

feature 'case manager interactions' do
  scenario 'case manager opens a qualification evaluation request' do
    qualification_evaluation = FactoryGirl.create(:qualification_evaluation)

    visit "/qualification_evaluations/#{qualification_evaluation.id}"
    expect(page).to have_content 'Microfavors Request'
    expect(page).to have_content "Name: #{qualification_evaluation.name}"
  end
end
