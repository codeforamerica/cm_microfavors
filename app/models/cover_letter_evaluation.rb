# frozen_string_literal: true

class CoverLetterEvaluation < ApplicationRecord
  validates_presence_of :name, :email, :cover_letter
  validates_email_format_of :email
end
