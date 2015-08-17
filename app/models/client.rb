class Client < ActiveRecord::Base
  has_many :debts
  has_many :orders
  def select_display
    name1 + " " + name2
  end
end
