class AddPossibleIssuesToSuffers < ActiveRecord::Migration[5.2]
  def change
    add_column :suffers, :possible_issues, :text, array: true, default: [].to_yaml
  end
end
