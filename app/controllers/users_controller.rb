class UsersController < ApplicationController
    before_action :authorized, only:[:stay_logged_in, :update]

    def index
        @user = User.all
        render json:@user
    end
    def show
        @user = User.find(params[:id])
        render json:@user, include: "**"
    end

    def login
        
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
          wristband = encode_token({user_id: @user.id})
          render json: {
            user: UserSerializer.new(@user),
            token: wristband
          }
        else
          render json: {error: "Sorry, looks like you may have a typo, check your spelling or create an account"}
        end
    end

    def stay_logged_in
        wristband = encode_token({user_id: @user.id})
        render json: {
          user: UserSerializer.new(@user),
          token: wristband
        }
    end

    def create
        @user = User.create(user_params)
        @user.dashboards.create(theme_id: 1)
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: {
                user: UserSerializer.new(@user),
                token: wristband
            }
        else
            render json: {error: "A User with that username already exists, try another "}
        end
    end

    def update
        
        @user.dashboards.first.update(theme_id: params[:new_id])
       
    
        render json: @user
    end

    private
    def user_params
        params.permit(:name, :username, :password)
    end
end
