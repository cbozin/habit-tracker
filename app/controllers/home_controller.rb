class HomeController < ApplicationController
    before_action :authenticate_user!
    def index
        render
    end
    def about
        render
    end
end
