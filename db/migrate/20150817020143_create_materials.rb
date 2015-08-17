class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.references :order_detail, index: true
      t.string :centro
      t.integer :existencia
      t.string :descrip
      t.integer :unidad
      t.integer :exist_ua
      t.integer :unidad_alm
      t.integer :peso_teo
      t.float :precio
      t.string :moneda
      t.integer :por_uni
      t.string :config
      t.string :ped_detnumped
      t.integer :ped_detpos
      t.integer :ped_detpos2

      t.timestamps
    end
  end
end
