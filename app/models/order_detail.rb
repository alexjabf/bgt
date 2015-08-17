class OrderDetail < ActiveRecord::Base
  belongs_to :order
  has_many :order_detail_materials
  #validates :order_id, presence: true
  accepts_nested_attributes_for :order_detail_materials, :allow_destroy => true
  def select_display
    "No. de Detalle: #{id.to_s},  #{order.select_display.to_s}" 
  end
end
