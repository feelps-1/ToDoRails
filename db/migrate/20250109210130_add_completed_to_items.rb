class AddCompletedToItems < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :completed, :boolean
  end
end
