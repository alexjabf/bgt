class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.references :client, index: true
      t.date :fecha
      t.string :clase_doc
      t.string :referencia
      t.date :fecha_venc
      t.integer :dias_venc
      t.float :saldo
      t.string :moneda
      t.integer :column

      t.timestamps
    end
  end
end
