class RemoveClubsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :clubs do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.string :address
      t.string :sport
      t.integer :price


      t.timestamps
    end
  end
end
