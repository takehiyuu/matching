class HuntingsController < ApplicationController
     before_action :move_to_profile, only: :show
     def index
          @recruitments = Recruitment.all
     end

     def create
          @hunting = Hunting.new(hunting_params)
          if @hunting.save
               redirect_to profile_path(current_user.profile)
          end
     end

     def show
          @recruitment = Recruitment.find(params[:id])
          @hunting = Hunting.new
     end

     private

     def hunting_params
          params.require(:hunting).permit(:recruitment_id).merge(profile_id: current_user.profile.id)
     end

     def move_to_profile
          if current_user.profile.blank?
               redirect_to new_profile_path(current_user)
          end
     end
end
