class CreateIdeas < ActiveRecord::Migration[5.1]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.date :estimated_date
      t.integer :goal_amount

      t.timestamps
    end
  end
end
