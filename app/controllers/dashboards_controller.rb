class DashboardsController < ApplicationController
    def index
        @dashboard = Dashboard.all
        render json:@dashboard
    end
    def show
        @dashboard = Dashboard.find(params[:id])
        render json:@dashboard
    end
    def create
        @dashboard = @user.dashboard.create(dashboard_params)
        if @user.valid?
            render json: @dashboard
            
        else
            render json: {error: "something went wrong"}
        end
    end

    def update
        @dashboard = Dashboard.find(params[:id])
        @dashboard.update(dashboard_params)
    
        render json: @dashboard
    end
    

    def destroy
        @dashboard = Dashboard.find(params[:id])
        @dashboard.destroy
    
        render json: @dashboard
    end

    private
    def dashboard_params
        params.permit(:theme_id)
      
    end
end
