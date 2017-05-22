# frozen_string_literal: true

class AddAttachmentResumeToQualificationEvaluations < ActiveRecord::Migration[5.1]
  def change
    remove_column :qualification_evaluations, :resume, :string

    change_table :qualification_evaluations do |t|
      t.attachment :resume, required: true
    end
  end
end
