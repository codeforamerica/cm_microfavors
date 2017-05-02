class ResumeEvaluationsController < ApplicationController
  def new
    @resume_evaluation = ResumeEvaluation.new
  end

  def create
    @resume_evaluation = ResumeEvaluation.new(resume_evaluation_params)

    if @resume_evaluation.valid?
      render :'jobseekers/next'
    else
      render :new
    end
  end

  private

  def resume_evaluation_params
    params.require(:resume_evaluation).permit(:name, :email)
  end
end
