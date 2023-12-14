class Admin::DashboardController < AdminController
    layout 'admin'

    def index
        @message = "This is the dashboard!"
    end
end