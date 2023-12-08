class LandingController < ApplicationController
    layout "landing"

    def index
        @preview = [
            {
                :title => "dinner",
                :description => "",
                :image => "AdobeStock_614278896.png"
            },
            {
                :title => "cocktails & wine",
                :description => "",
                :image => "AdobeStock_603862206_Preview.png"
            },
            {
                :title => "children's",
                :description => "",
                :image => "AdobeStock_627813906_Preview.png"
            },
        ]
    end
end
