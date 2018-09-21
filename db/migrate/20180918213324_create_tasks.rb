class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :category
      t.string :name
      t.string :due

      t.timestamps
    end
  end
end
