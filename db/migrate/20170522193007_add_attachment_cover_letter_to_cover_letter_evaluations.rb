# frozen_string_literal: true

class AddAttachmentCoverLetterToCoverLetterEvaluations < ActiveRecord::Migration[5.1]
  def change
    remove_column :cover_letter_evaluations, :cover_letter, :string

    change_table :cover_letter_evaluations do |t|
      t.attachment :cover_letter, required: true
    end
  end
end
