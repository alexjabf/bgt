class Material < ActiveRecord::Base
  has_many :order_detail_materials
end
