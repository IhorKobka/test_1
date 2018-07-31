module Api
  module V1
    class ImagesController < ApplicationController
      def create
        json_response(Image.create!(image_params))
      end

      private

      def image_params
        params.require(:image).permit(:product_id, :image, :category)
      end
    end
  end
end


