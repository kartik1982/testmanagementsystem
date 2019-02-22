class CreateTestsuites < ActiveRecord::Migration[5.2]
  def change
    create_table :testsuites do |t|
      t.string :testsuiteID
      t.string :description
      t.boolean :runmode
      t.timestamps
    end
  end
end
