class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.references :order, index: true
      t.integer :matnr
      t.integer :cantidad
      t.integer :unidad
      t.float :precio
      t.string :moneda
      t.integer :por_um
      t.integer :um
      t.integer :desc1
      t.integer :desc2
      t.integer :desc3
      t.float :importe
      t.integer :kilos

      t.timestamps
    end
  end
end
