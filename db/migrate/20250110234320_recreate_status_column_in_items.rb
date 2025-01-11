class RecreateStatusColumnInItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :items, :status, :integer
    add_column :items, :status, :integer, default: 0, null: false
  end
end
