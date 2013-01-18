Deface::Override.new(:virtual_path  => "spree/layouts/spree_application",
                     :insert_before => "[data-hook='body']",
                     :partial => "spree/shared/language_chooser",
                     :name          => "english_locale"
                     )