class CreateSuffers < ActiveRecord::Migration[5.2]
  def change
    create_table :suffers do |t|
      t.integer :patient_id
      # t.text :symptom_ids, array: true, default: []

      t.timestamps
    end
  end
end
