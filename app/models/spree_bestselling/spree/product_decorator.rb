module SpreeBestselling
  module Spree
    module ProductDecorator
      def update_conversions
        update_attribute(:conversions, orders.complete.count)
      end
    end
  end
end

::Spree::Product.prepend(::SpreeBestselling::Spree::ProductDecorator)
