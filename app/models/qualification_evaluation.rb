class QualificationEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :job_posting, :resume

  validates_presence_of :name, :email, :job_posting, :resume
  validates_email_format_of :email
end
