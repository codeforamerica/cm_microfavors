# Preview all emails at http://localhost:3000/rails/mailers/evaluation_mailer
class EvaluationMailerPreview < ActionMailer::Preview
  def resume_help
    EvaluationMailer.resume_help
  end
end
