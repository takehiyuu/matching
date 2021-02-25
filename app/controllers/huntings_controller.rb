class HuntingsController < ApplicationController
     def index
          @recruitment = Recruitment.find(params[:recruitment_id])
     end
end
