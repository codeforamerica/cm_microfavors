class CoverLetterEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :cover_letter

  validates_presence_of :name, :email, :cover_letter
end
