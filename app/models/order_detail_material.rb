class OrderDetailMaterial < ActiveRecord::Base
  belongs_to :order_detail
  belongs_to :material
end
