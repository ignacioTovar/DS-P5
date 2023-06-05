class CreateFornitures < ActiveRecord::Migration[7.0]
  def change
    create_table :fornitures do |t|
      t.string :nombre
      t.string :tipo
      t.string :material
      t.integer :cantidad

      t.timestamps
    end
  end
end
