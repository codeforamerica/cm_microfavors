# frozen_string_literal: true

class ResumeEvaluationsController < ApplicationController
  def new
    @resume_evaluation = ResumeEvaluation.new
  end

  def create
    @resume_evaluation = ResumeEvaluation.new(resume_evaluation_params)

    if @resume_evaluation.save
      render :'jobseekers/next'
    else
      render :new
    end
  end

  def show
    @resume_evaluation = ResumeEvaluation.find(params[:id])
  end

  private

  def resume_evaluation_params
    params.require(:resume_evaluation).permit(:name, :email, :resume)
  end
end
