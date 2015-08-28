class AddNoteTypeToListing < ActiveRecord::Migration
  def change
    add_column :listings, :note_type, :string
  end
end
