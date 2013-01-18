# This migration comes from spree_multi_lingual (originally 20120308231230)
class AddTranslationToTaxonomiesAndTaxons < ActiveRecord::Migration
  def up
     Spree::Taxonomy.create_translation_table!({:name => :string},
      {:migrate_data => true})
     Spree::Taxon.create_translation_table!({
       :name => :string, :permalink => :string, :description => :text},
       {:migrate_data => true})
   end
   def down
     Spree::Taxonomy.drop_translation_table! :migrate_data => true
     Spree::Taxon.drop_translation_table! :migrate_data => true
   end
end
