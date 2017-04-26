class JobseekersController < ApplicationController
  def resume_feedback
    @header = 'Get resume feedback'

    render :ask
  end

  def common_questions
    @header = 'Answer common questions'

    render :ask
  end

  def am_i_qualified
    @header = 'Find out if you are qualified'

    render :ask
  end
end
