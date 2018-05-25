class AddOutstandingToIdeas < ActiveRecord::Migration[5.1]
  def change
    add_column :ideas, :outstanding, :boolean
  end
end
