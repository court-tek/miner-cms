class Admin::FoodItemsController < ApplicationController
    layout 'admin'

    def index
        @items = Page.all
    end

    # DELETE /pages/1 or /pages/1.json
    def destroy
        @item.destroy!
        
        redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end
end

