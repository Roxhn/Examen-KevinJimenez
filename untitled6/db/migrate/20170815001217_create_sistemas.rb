class CreateSistemas < ActiveRecord::Migration
  def change
    create_table :sistemas do |t|
      t.string :nombre
      t.float :coordeanadaa
      t.float :coordenadab
      t.binary :estado

      t.timestamps null: false
    end
  end
end
