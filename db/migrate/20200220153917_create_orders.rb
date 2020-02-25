class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :state
      t.string :shoe_sku
      t.monetize :amount, currency: { present: false }
      # t.monetize :amount
      t.string :checkout_session_id
      t.references :user, foreign_key: true
      t.references :shoe, foreign_key: true

      t.timestamps
    end
  end
end
