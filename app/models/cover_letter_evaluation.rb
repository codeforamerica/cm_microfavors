# frozen_string_literal: true

class CoverLetterEvaluation < ApplicationRecord
  has_attached_file :cover_letter
  validates_attachment_content_type :cover_letter, content_type: 'application/pdf'

  validates_presence_of :name, :email
  validates_email_format_of :email
end
