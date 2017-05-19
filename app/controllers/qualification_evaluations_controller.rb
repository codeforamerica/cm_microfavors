# frozen_string_literal: true

class QualificationEvaluationsController < ApplicationController
  def new
    @qualification_evaluation = QualificationEvaluation.new
  end

  def create
    @qualification_evaluation = QualificationEvaluation.new(qualification_evaluation_params)

    if @qualification_evaluation.valid?
      render :'jobseekers/next'
    else
      render :new
    end
  end

  def show
    @qualification_evaluation = QualificationEvaluation.find(params[:id])
  end

  private

  def qualification_evaluation_params
    params.require(:qualification_evaluation).permit(:name, :email, :job_posting, :resume)
  end
end
