class ResumeEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :resume

  validates_presence_of :name, :email, :resume
end
