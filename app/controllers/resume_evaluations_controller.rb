class ResumeEvaluationsController < ApplicationController
  def new
    @resume_evaluation = ResumeEvaluation.new
  end

  def create
    render :'jobseekers/next'
  end
end
