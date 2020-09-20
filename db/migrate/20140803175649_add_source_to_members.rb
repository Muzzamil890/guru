class AddSourceToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :source_id, :integer
    add_index :members, :source_id
  end
end
