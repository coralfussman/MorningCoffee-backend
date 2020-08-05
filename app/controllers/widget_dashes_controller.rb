class WidgetDashesController < ApplicationController
    before_action :authorized, only:[:create]

    def index
        @widget_dash = WidgetDash.all
        render json:@widget_dash
    end
    def show
        @widget_dash = WidgetDash.find(params[:id])
        render json:@widget_dash
    end
    def create
        @widget_dash = WidgetDash.create(widget_dash_params)
        if @widget_dash.valid?
            render json:  @widget_dash.widget.attributes.merge({widget_dash_id: @widget_dash.id})

            
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
