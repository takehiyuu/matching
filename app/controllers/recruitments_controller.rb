class RecruitmentsController < ApplicationController
     def new
          @company = Company.find(params[:company_id])
          @recruitment = Recruitment.new
     end

     def create
          @company = Company.find(params[:company_id])
          recruitment = Recruitment.create(recruitment_params)
          if recruitment.save
               redirect_to root_path
          else
               render 'new'
          end
     end

     private

     def recruitment_params
          params.require(:recruitment).permit(:category, :work, :work_day, :work_time, :prefecture_id, :city, :address, :building, :pr).merge(company_id: @company.id)
     end
end
