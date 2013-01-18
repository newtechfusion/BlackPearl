# This migration comes from spree_multi_lingual (originally 20120421183338)
class AddTranslationsToOptionTypes < ActiveRecord::Migration
  def up
    Spree::OptionType.create_translation_table!({:presentation => :string},
    {:migrate_data => true})
  end

  def down
    Spree::OptionType.drop_translation_table!
  end
end