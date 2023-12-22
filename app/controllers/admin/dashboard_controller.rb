class Admin::DashboardController < ApplicationController
    layout 'admin'

    # GET /admin/menu_categories or /admin/menu_categories.json
  def index
    @admin_dashboard = "This is the dashboard"
  end
end
