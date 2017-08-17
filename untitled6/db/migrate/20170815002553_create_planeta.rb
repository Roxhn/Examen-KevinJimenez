class CreatePlaneta < ActiveRecord::Migration
  def change
    create_table :planeta do |t|
      t.string :nombre
      t.float :coordenadaa
      t.float :coordenadab
      t.binary :estado
      t.string :sistema

      t.timestamps null: false
    end
  end
end
