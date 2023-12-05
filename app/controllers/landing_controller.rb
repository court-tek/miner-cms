class LandingController < ApplicationController
    layout "landing"

    def index
        @preview = [
            {
                :title => "dinner",
                :description => "",
                :image => ""
            },
            {
                :title => "cocktails & wine",
                :description => "",
                :image => ""
            },
            {
                :title => "children's",
                :description => "",
                :image => ""
            },
        ]
    end
end
