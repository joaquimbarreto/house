class AddCategoryToSymptoms < ActiveRecord::Migration[5.2]
  def change
    add_column :symptoms, :category, :string
  end
end
