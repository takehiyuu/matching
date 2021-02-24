class CompaniesController < ApplicationController

     def index
          @companies = Company.all
     end

     def new
          @company = Company.new
     end

     def create
          company = Company.create(company_params)
          if company.save
               redirect_to company_path(current_user)
          else
               render 'new'
          end
     end

     def show
          @user = Company.where(user_id: current_user.id)
          if @user.present?
               @company = current_user.company
          end
     end

     def edit
          @company = Company.find(params[:id])
     end

     def update
          company = Company.find(params[:id])
          company.update(company_params)
          if company.save
               redirect_to company_path(company)
          else
               render edit_company_path(company)
          end
     end

     private

     def company_params
          params.require(:company).permit(:name, :occupaion, :prefecture_id, :phone_number, :city, :address, :image, :building).merge(user_id: current_user.id)
     end

     
end
