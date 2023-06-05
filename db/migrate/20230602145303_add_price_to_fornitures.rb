class AddPriceToFornitures < ActiveRecord::Migration[7.0]
  def change
    add_column :fornitures, :price, :decimal
  end
end
