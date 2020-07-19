class WidgetsController < ApplicationController
    def index
        @widget = Widget.all
        render json:@widget 
    end
    def show
        @widget = Widget.find(params[:id])
        render json:@widget
    end
end
