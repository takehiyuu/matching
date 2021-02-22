class ProfilesController < ApplicationController
     def new
          @profile = Profile.new
     end

     def create
          profile = Profile.create(profile_params)
          if profile.save
               redirect_to mains_path
          else
               render "new"
          end
     end

     private

     def profile_params
          params.require(:profile).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :gender_id, :prefecture_id, :image, :phone_number, :city, :pr, :birth_date).merge(user_id: current_user.id)
     end
end
