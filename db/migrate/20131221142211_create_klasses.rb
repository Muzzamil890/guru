class CreateKlasses < ActiveRecord::Migration[6.0]
  def change
    create_table :klasses do |t|
      t.string :day_of_week
      t.datetime :class_time
      t.string :name
      t.boolean :recurring, default: true

      t.references :studio, index: true
      t.timestamps
    end

    # add_index :klasses, :studio_id
  end
end
