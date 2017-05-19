# frozen_string_literal: true

class AddRequestTables < ActiveRecord::Migration[5.1]
  def change
    create_table(:resume_evaluations) do |t|
      t.string :name, required: true
      t.string :email, required: true
      t.string :resume, required: true
    end
  end
end
