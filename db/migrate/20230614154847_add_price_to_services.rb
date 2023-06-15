class AddPriceToServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :price
    add_monetize :services, :price, currency: { present: false }
  end
end
