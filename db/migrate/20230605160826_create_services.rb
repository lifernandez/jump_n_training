class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.references :trainer, null: false, foreign_key: true
      t.text :description
      t.string :service_type
      t.string :address
      t.string :sport
      t.integer :price

      t.timestamps
    end
  end
end
