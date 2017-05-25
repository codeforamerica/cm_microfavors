# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'sdworkforce@codeforamerica.org'
  layout 'mailer'
end
