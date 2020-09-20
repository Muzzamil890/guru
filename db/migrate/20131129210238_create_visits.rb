class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.date :visit_date

      t.references :member, index: true
      t.references :klass, index: true
      t.timestamps
    end

    # add_index :visits, :member_id
    # add_index :visits, :klass_id
  end
end
