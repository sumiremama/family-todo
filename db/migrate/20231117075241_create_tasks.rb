class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :memo
      t.integer :category, null: false
      t.string :target_date
      t.timestamps
    end
  end
end
