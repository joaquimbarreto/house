class AddPossibleIssuesToSuffers < ActiveRecord::Migration[5.2]
  def change
    add_column :suffers, :possible_issues, :string
    add_column :suffers, :text, :string
  end
end
