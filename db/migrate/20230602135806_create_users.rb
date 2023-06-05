class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nombre
      t.string :dni
      t.string :correo
      t.string :domicilio
      t.string :pass
      t.boolean :admin

      t.timestamps
    end
  end
end
