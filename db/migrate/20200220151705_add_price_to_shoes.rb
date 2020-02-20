class AddPriceToShoes < ActiveRecord::Migration[5.2]
  def change
    add_monetize :shoes, :price, currency: { present: false }
  end
end
