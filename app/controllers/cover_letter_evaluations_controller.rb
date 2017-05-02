class CoverLetterEvaluationsController < ApplicationController
  def new
    @cover_letter_evaluation = CoverLetterEvaluation.new
  end

  def create
    @cover_letter_evaluation = CoverLetterEvaluation.new(cover_letter_evaluation_params)

    if @cover_letter_evaluation.valid?
      render :'jobseekers/next'
    else
      render :new
    end
  end

  private

  def cover_letter_evaluation_params
    params.require(:cover_letter_evaluation).permit(:name, :email)
  end
end
