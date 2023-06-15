class AddStartTimeToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :start_time, :datetime
  end
end
