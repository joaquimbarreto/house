class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.integer :sympton_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
