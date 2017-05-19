# frozen_string_literal: true

class QualificationEvaluation < ApplicationRecord
  validates_presence_of :name, :email, :job_posting, :resume
  validates_email_format_of :email
end
