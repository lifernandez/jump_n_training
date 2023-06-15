class AddSkuToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :sku, :string
  end
end
