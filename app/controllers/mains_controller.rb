class MainsController < ApplicationController
     before_action :authenticate_user!, except: :index
     def index
          @companies = Company.all
     end
end
