# This migration comes from spree_multi_lingual (originally 20120426202113)
class AddLocaleToOrders < ActiveRecord::Migration
  def change
    add_column  :spree_orders,  :locale,  :string
  end
end
