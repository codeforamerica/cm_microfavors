class QualificationEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :job_posting

  validates_presence_of :name, :email, :job_posting
end
