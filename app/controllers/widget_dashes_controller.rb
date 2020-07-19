class WidgetDashesController < ApplicationController
    def index
        @widget_dash = WidgetDash.all
        render json:@widget_dash
    end
    def show
        @widget_dash = WidgetDash.find(params[:id])
        render json:@widget_dash
    end
    def create
        @widget_dash = @user.dashboard.widget_dash.create(widget_dash_params)
        if @user.valid?
            render json: @widget_dash
            
        else
            render json: {error: "something went wrong"}
        end
    end

    def update
        @widget_dash = WidgetDash.find(params[:id])
        @widget_dash.update(widget_dash_params)
    
        render json: @widget_dash
    end
    

    def destroy
        @widget_dash = WidgetDash.find(params[:id])
        @widget_dash.destroy
    
        render json: @widget_dash
    end

    private
    def widget_dash_params
        params.permit(:dashboard_id, :widget_id)
      
    end
end
