class CreateConstelacions < ActiveRecord::Migration
  def change
    create_table :constelacions do |t|
      t.string :Nombre
      t.float :CoordenadaA
      t.float :CoordenadaB
      t.binary :Estado

      t.timestamps null: false
    end
  end
end
