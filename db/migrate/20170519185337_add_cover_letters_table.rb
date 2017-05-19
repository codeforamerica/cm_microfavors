# frozen_string_literal: true

class AddCoverLettersTable < ActiveRecord::Migration[5.1]
  def change
    create_table(:cover_letter_evaluations) do |t|
      t.string :name, required: true
      t.string :email, required: true
      t.string :cover_letter, required: true
    end
  end
end
