class MainsController < ApplicationController
     def index
          @companies = Company.all
     end
end
