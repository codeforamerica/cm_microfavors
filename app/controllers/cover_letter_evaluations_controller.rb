class CoverLetterEvaluationsController < ApplicationController
  def new
    @cover_letter_evaluation = CoverLetterEvaluation.new
  end

  def create
    render :'jobseekers/next'
  end
end
