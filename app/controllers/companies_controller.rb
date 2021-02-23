class CompaniesController < ApplicationController
     def new
          @company = Company.new
     end

     def create
          company = Company.create(company_params)
          if company.save
               redirect_to root_path
          else
               render 'new'
          end
     end

     def show
          @company = Company.find(params[:id])
     end

     private

     def company_params
          params.require(:company).permit(:name, :occupaion, :prefecture_id, :phone_number, :city, :address, :image, :building).merge(user_id: current_user.id)
     end
end
