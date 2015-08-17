class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name1
      t.string :name2
      t.string :cond_pago
      t.string :moneda
      t.string :centro
      t.string :clientesnumcte
      t.string :clientesnumcte2

      t.timestamps
    end
  end
end
