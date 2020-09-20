class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.decimal :balance
      t.date :payment_due_date
      t.integer :state

      t.references :member, index: true
      t.timestamps
    end

    # add_index :accounts, :member_id
  end
end
