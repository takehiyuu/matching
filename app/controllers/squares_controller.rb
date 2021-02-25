class SquaresController < ApplicationController
     def index
          @recruitments = Recruitment.all
     end

     def show
          @recruitment = Recruitment.find(params[:id])
          @company = Company.find(params[:id])
     end
end
