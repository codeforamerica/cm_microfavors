# frozen_string_literal: true

class ResumeEvaluation
  include ActiveModel::Model
  include ActiveModel::Validations

  attr_accessor :name, :email, :resume

  validates_presence_of :name, :email, :resume
  validates_email_format_of :email
end
