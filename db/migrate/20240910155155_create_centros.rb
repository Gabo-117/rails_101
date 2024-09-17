class CreateCentros < ActiveRecord::Migration[7.2]
  def change
    create_table :centros do |t|
      t.string :clave
      t.text :nombre

      t.timestamps
    end
  end
end
