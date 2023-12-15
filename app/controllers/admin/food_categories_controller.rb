class Admin::FoodCategoriesController < ApplicationController
    layout 'admin'

    def index
      @message = "Food categories page"
    end

    def new 
      @message_new = "This page creates an option!"
    end

    def edit 
      @message_new = "This page creates an edit option!"
    end
end
