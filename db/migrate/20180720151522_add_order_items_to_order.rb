class AddOrderItemsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :order_items, :text
  end
end
