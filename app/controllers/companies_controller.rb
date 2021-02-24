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
               redirect_to companies_path
          else
               render 'new'
          end
     end

     def show
          @company = Company.find(params[:id])
     end

     def edit
          @company = Company.find(params[:id])
     end

     def update
          company = Company.find(params[:id])
          company.update(company_params)
          if company.save
               redirect_to companies_path
          else
               render edit_company_path(company.id)
          end
     end

     private

     def company_params
          params.require(:company).permit(:name, :occupaion, :prefecture_id, :phone_number, :city, :address, :image, :building).merge(user_id: current_user.id)
     end

     
end
