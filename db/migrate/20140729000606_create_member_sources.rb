class CreateMemberSources < ActiveRecord::Migration[6.0]
  def change
    create_table :member_sources do |t|
      t.string :name

      t.references :studio, index: true
      t.timestamps
    end

    # add_index :member_sources, :studio_id
  end
end
