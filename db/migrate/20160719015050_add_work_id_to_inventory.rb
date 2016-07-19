class AddWorkIdToInventory < ActiveRecord::Migration
  def change
    add_reference :inventories, :work, index: true, foreign_key: true
  end
end
