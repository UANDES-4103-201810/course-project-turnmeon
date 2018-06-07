class AddFundedToIdeas < ActiveRecord::Migration[5.1]
  def change
	add_column :ideas, :funded, :integer, default: 0
  end
end
