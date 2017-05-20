# frozen_string_literal: true

class ResumeEvaluation < ApplicationRecord
  has_attached_file :resume
  validates_attachment_content_type :resume, content_type: 'application/pdf'

  validates_presence_of :name, :email
  validates_email_format_of :email
end
