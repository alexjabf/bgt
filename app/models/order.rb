class Order < ActiveRecord::Base
  belongs_to :client
  has_one :order_detail
  has_many :order_detail_materials, through: :order_detail
  validates :client_id, presence: true
  
  
  accepts_nested_attributes_for :order_detail, :allow_destroy => true
  accepts_nested_attributes_for :order_detail_materials, :allow_destroy => true
  def select_display
    "No. de Pedido: #{id.to_s}, Cliente: #{client.select_display}" 
  end
end
