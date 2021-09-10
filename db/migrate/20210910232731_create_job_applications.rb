class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.string :notes
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.string :status
      t.boolean :rejected
      t.string :application_process

      t.timestamps
    end
  end
end
