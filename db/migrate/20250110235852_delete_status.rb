class DeleteStatus < ActiveRecord::Migration[8.0]
  def change
    remove_column :items, :status, :integer
  end
end
