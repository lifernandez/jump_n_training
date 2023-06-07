class CreateTrainerData < ActiveRecord::Migration[7.0]
  def change
    create_table :trainer_data do |t|
      t.string :sports
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
