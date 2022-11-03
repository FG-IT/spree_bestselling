module SpreeBestselling
  module Spree
    module VariantDecorator
      def update_conversions
        update_attribute(:conversions, orders.complete.count)
      end
    end
  end
end

::Spree::Variant.prepend(::SpreeBestselling::Spree::VariantDecorator)
