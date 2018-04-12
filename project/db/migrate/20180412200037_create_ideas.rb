class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :description
      t.date :estimated_date
      t.integer :goal_amount
      t.string :category
      t.integer :user_id

      t.timestamps
    end
  end
end
