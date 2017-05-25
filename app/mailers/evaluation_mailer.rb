class EvaluationMailer < ApplicationMailer
  def resume_help
    mail(to: 'fakecasemanager@gmail.com', subject: 'Testing')
  end
end
