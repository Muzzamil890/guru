class CreateLevels < ActiveRecord::Migration[6.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.string :color

      t.references :studio, index: true
      t.timestamps
    end

    # add_index :levels, :studio_id
  end
end
