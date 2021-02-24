class ProfilesController < ApplicationController
     # before_action :move_profile, only: [:show]
     def new
          @profile = Profile.new
     end

     def create
          profile = Profile.create(profile_params)
          if profile.save
               redirect_to profile_path(current_user)
          else
               render "new"
          end
     end

     def show
          @user = Profile.where(user_id: current_user.id)
          if @user.present?
               @profile = current_user.profile
          end
     end

     def edit
          @profile = Profile.find(params[:id])
     end

     def update
          profile = Profile.find(params[:id])
          profile.update(profile_params)
          if profile.save
               redirect_to profile_path(profile)
          else
               render edit_profile_path(profile)
          end
     end

     private

     def profile_params
          params.require(:profile).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :gender_id, :prefecture_id, :image, :phone_number, :city, :pr, :birth_date).merge(user_id: current_user.id)
     end
end
