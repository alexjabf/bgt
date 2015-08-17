class CreateOrderDetailMaterials < ActiveRecord::Migration
  def change
    create_table :order_detail_materials do |t|
      t.references :order_detail, index: true
      t.references :material, index: true

      t.timestamps
    end
  end
end
