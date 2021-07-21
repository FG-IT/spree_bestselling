module Spree::ProductDecorator
  def update_conversions
    update_attribute(:conversions, orders.complete.count)
  end
end

::Spree::Product.prepend(Spree::ProductDecorator)
