class JobseekersController < ApplicationController
  def resume_feedback
    @header = 'Get resume feedback'

    ask
  end

  def common_questions
    @header = 'Answer common questions'

    ask
  end

  def am_i_qualified
    @header = 'Find out if you are qualified'

    ask
  end

  private

  def ask
    render :ask
  end
end
