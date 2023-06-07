class UpdateServicesAttributes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :services, :user, foreign_key: true
    remove_reference :services, :category, foreign_key: true
    add_reference :services, :trainer_data, foreign_key: true
    add_column :services, :service_type, :string
  end
end
