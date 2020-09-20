class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.date :due_date
      t.date :payment_date
      t.decimal :amount_due
      t.decimal :payment_amount
      t.string :payment_method, default: 'check'

      t.references :account, index: true
      t.timestamps
    end

    # add_index :payments, :account_id
  end
end
