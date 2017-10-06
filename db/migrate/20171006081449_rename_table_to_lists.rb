class RenameTableToLists < ActiveRecord::Migration[5.1]
  def change
  	rename_table :list_items, :list
  end
end
