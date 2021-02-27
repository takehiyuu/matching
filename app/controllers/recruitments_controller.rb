class RecruitmentsController < ApplicationController
     def index
          @company = Company.find(params[:company_id])
          @recruitments = current_user.company.recruitments
     end

     def new
          @company = Company.find(params[:company_id])
          @recruitment = Recruitment.new
     end

     def create
          @company = Company.find(params[:company_id])
          recruitment = Recruitment.create(recruitment_params)
          if recruitment.save
               redirect_to company_recruitment_path(@company, recruitment.id)
          else
               render 'new'
          end
     end

     def show
          @company = current_user.company
          @company_recruitment = Recruitment.where(company_id: @company.id).first
          if @company_recruitment.present?
               @recruitment = Recruitment.find(params[:id])
          end
     end

     def edit
          @company = Company.find(params[:company_id])
          @recruitment = Recruitment.find(params[:id])
     end

     def update
          @company = Company.find(params[:company_id])
          recruitment = Recruitment.find(params[:id])
          recruitment.update(recruitment_params)
          if recruitment.save
               redirect_to company_recruitment_path(@company, recruitment.id)
          else
               render edit_company_recruitment_path(recruitment)
          end
     end

     def destroy
          recruitment = Recruitment.find(params[:id])
          recruitment.destroy
          redirect_to company_recruitment_path(current_user.company)
     end

     private

     def recruitment_params
          params.require(:recruitment).permit(:category, :work, :work_day, :work_time, :prefecture_id, :city, :address, :building, :pr, :price).merge(company_id: @company.id)
     end
end
