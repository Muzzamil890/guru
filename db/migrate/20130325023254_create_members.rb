class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.date :birthday
      t.boolean :active, default: true
      t.string :image
      t.text :notes
      t.date :start_date
      t.date :end_date
      t.string :membership_type, default: 'monthly'
      t.decimal :membership_price

      t.references :studio, index: true
      t.timestamps
    end

    # add_index :members, :studio_id
  end
end
