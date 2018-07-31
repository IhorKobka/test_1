module Api
  module V1
    class ProductsController < ApplicationController
      def index
        json_collection_response(Product.all, ProductSerializer)
      end

      def create
        json_response(Product.create!(product_params))
      end

      private

      def product_params
        params.require(:product).permit(:name, :category_id)
      end
    end
  end
end

