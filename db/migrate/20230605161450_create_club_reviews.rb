class CreateClubReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :club_reviews do |t|
      t.references :subscription, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
