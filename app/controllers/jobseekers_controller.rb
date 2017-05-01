class JobseekersController < ApplicationController
  def am_i_qualified
    @header = 'Find out if you are qualified'

    ask
  end

  private

  def ask
    render :ask
  end
end
