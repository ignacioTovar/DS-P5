class CreateCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :compras do |t|
      t.references :users, null: false, foreign_key: true
      t.date :fecha_compra

      t.timestamps
    end
  end
end
