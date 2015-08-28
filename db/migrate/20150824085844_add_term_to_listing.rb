class AddTermToListing < ActiveRecord::Migration
  def change
    add_column :listings, :term, :decimal
  end
end
