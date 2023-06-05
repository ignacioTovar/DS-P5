class CreateDetalleCompras < ActiveRecord::Migration[7.0]
  def change
    create_table :detalle_compras do |t|
      t.references :compra, null: false, foreign_key: true
      t.references :forniture, null: false, foreign_key: true
      t.integer :cantidad

      t.timestamps
    end
  end
end
