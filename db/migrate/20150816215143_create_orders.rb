class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :client, index: true
      t.string :clase_ped
      t.string :numped_cte
      t.date :fecha
      t.string :forma_entrega
      t.string :cond_pago
      t.string :moneda
      t.string :centro
      t.date :fec_entrega
      t.string :flete_local
      t.string :tarifa_flete_for

      t.timestamps
    end
  end
end
