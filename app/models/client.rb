class Client < ActiveRecord::Base
  has_many :debts, :dependent => :destroy
  has_many :orders, :dependent => :destroy
  def select_display
    name1 + " " + name2
  end
end
