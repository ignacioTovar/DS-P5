class CreateComentarios < ActiveRecord::Migration[7.0]
  def change
    create_table :comentarios do |t|
      t.references :forniture, null: false, foreign_key: true
      t.text :texto

      t.timestamps
    end
  end
end
