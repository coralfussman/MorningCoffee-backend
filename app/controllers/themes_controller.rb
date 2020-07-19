class ThemesController < ApplicationController

    def index
        @theme = Theme.all
        render json:@theme
    end
    def show
        @theme = Theme.find(params[:id])
        render json:@theme
    end

end
