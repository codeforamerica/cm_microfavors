class QualificationEvaluationsController < ApplicationController
  def new
    @qualification_evaluation = QualificationEvaluation.new
  end

  def create
    render :'jobseekers/next'
  end
end
