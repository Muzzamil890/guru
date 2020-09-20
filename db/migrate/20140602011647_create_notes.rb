class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.text :body

      t.references :member, index: true
      t.timestamps
    end

    # add_index :notes, :member_id
  end
end
