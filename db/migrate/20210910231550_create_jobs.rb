class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :role
      t.string :listing_url
      t.string :location
      t.string :description
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
