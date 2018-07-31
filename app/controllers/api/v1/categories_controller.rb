module Api
  module V1
    class CategoriesController < ApplicationController
      def index
        render json: { categories: Category.as_tree }
      end

      def create
        json_response(Category.create!(category_params))
      end

      def update
        category = Category.find(params[:id])
        category.update_attributes!(category_params)
        json_response(category)
      end

      private

      def category_params
        params.require(:category).permit(:name, :parent_id, :sort_pos)
      end
    end
  end
end

