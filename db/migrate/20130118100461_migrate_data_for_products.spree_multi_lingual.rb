# This migration comes from spree_multi_lingual (originally 20120309094246)
class MigrateDataForProducts < ActiveRecord::Migration
  def up
    Spree::Product.transaction do
      Spree::Product.find_each do |product|
        product.update_attributes!(product.untranslated_attributes, :without_protection => true)
      end
    end
  end

  def down
  end
end
