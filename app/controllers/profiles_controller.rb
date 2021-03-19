class ProfilesController < ApplicationController
     def new
          @profile = Profile.new
     end

     def create
          if profile = Profile.create(profile_params)
               redirect_to profile_path(current_user)
          else
               render "new"
          end
     end

     def show
          @user = Profile.where(user_id: current_user.id)
          if @user.present?
               @profile = current_user.profile
               @hunting = Hunting.where(profile_id: current_user.profile.id).first
               if @hunting.present?
                    @recruitment = Recruitment.find(@hunting.recruitment_id)
               end
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

     def destroy
          profile = Profile.find(params[:id])
          profile.destroy
          redirect_to profile_path(current_user)
     end

     private

     def profile_params
          params.require(:profile).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :gender_id, :prefecture_id, :image, :phone_number, :city, :pr, :birth_id).merge(user_id: current_user.id)
     end
end
