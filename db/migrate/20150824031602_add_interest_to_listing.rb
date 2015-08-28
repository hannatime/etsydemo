class AddInterestToListing < ActiveRecord::Migration
  def change
    add_column :listings, :interest, :decimal
  end
end
