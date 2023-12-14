class Admin::FoodCategoriesController < ApplicationController
    layout 'admin'

    def index
      @message = "Food categories page"
    end
end
