class ProductInventory < ActiveRecord::Base

  after_initialize :init

  def init
    self.inventory  ||= 50           #will set the default value only if it's nil
    self.sold ||= 0 #let's you set a default association
    self.returned ||= 0
  end
end
