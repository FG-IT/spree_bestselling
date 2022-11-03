module SpreeBestselling
  module Spree
    module OrderDecorator
      def self.prepended(base)
        base.state_machine.after_transition to: :complete, do: :reindex_order_products
      end

      def reindex_order_products
        return unless complete?

        variants.map(&:update_conversions)
        products.map(&:update_conversions)
      end
    end
  end
end

::Spree::Order.prepend(::SpreeBestselling::Spree::OrderDecorator)
