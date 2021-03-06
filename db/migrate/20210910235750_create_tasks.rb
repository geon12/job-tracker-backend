class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :category
      t.string :date
      t.boolean :completed
      t.belongs_to :job_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
