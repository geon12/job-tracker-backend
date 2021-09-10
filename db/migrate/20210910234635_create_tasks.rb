class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :category
      t.string :date
      t.boolean :completed
      t.belong_to :job

      t.timestamps
    end
  end
end
