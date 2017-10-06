class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :title
      t.text :item
      t.integer :user_id

      t.timestamps
    end
  end
end
