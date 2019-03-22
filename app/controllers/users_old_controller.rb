class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def create
        # User.create name: params[:name], address: params[:address], phone: params[:phone], image: params[:image]  
        # redirect_to "/users"

        @user = User.new(name: params[:name], address: params[:address], phone: params[:phone], image: params[:image] )
        @user.save
        # profile_picture = params[:image]
        # File.open(Rails.root.join('public', 'uploads', profile_picture.original_filename), 'wb') do |image|
        #    file.write(profile_picture.read)
        # end
        
        redirect_to "/users"
    end
    

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
       
        if @user.update name: params[:name], address: params[:address], phone: params[:phone]
            redirect_to "/users"
        else
          render 'edit'
        end
    end

    def destroy
        @one_user = User.find(params[:id])
        @one_user.destroy
        redirect_to "/users"
    end


    # private
    # def user_params
    #     params.require(:user).permit(:name, :address, :phone, :image)
    # end

end
