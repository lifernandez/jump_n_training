class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.references :category, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :address
      t.string :sport

      t.timestamps
    end
  end
end
