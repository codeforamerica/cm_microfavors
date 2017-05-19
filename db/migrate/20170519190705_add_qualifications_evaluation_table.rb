# frozen_string_literal: true

class AddQualificationsEvaluationTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:qualification_evaluations) do |t|
      t.string :name, required: true
      t.string :email, required: true
      t.string :resume, required: true
      t.string :job_posting, required: true
    end
  end
end
