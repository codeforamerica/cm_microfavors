class CoverLetterEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email

  validates_presence_of :name, :email
end
