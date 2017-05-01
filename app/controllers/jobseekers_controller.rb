class JobseekersController < ApplicationController
  def cover_letter_feedback
    @header = 'Cover Letter Help'

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
