class AddCategoryIdToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :category_id, :integer
  end
end
