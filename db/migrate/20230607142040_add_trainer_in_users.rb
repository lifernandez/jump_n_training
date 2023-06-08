class AddTrainerInUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :istrainer, :boolean
  end
end
