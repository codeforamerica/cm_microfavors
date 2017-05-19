# frozen_string_literal: true

class ResumeEvaluation < ApplicationRecord
  validates_presence_of :name, :email, :resume
  validates_email_format_of :email
end
