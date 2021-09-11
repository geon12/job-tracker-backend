class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :role
      t.string :description
      t.string :phone_number
      t.string :email
      t.belongs_to :job_application, null: false, foreign_key: true

      t.timestamps
    end
  end
end
