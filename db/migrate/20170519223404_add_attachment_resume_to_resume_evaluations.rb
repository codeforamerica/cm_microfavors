# frozen_string_literal: true

class AddAttachmentResumeToResumeEvaluations < ActiveRecord::Migration[5.1]
  def change
    remove_column :resume_evaluations, :resume, :string

    change_table :resume_evaluations do |t|
      t.attachment :resume, required: true
    end
  end
end
