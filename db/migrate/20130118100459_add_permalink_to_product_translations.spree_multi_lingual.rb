# This migration comes from spree_multi_lingual (originally 20120308202231)
class AddPermalinkToProductTranslations < ActiveRecord::Migration
  def change
    unless column_exists?(:spree_product_translations, :permalink, :string)
      add_column  :spree_product_translations, :permalink, :string
    end
  end
end
