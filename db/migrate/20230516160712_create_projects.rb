class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name, null:false
      t.integer :team, null:false
      t.text :info

      t.timestamps
    end
    add_index :projects, :name, unique: true
    add_index :projects, :team, unique: true
  end
end
