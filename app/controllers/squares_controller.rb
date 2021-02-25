class SquaresController < ApplicationController
     def index
          @recruitments = Recruitment.all
     end
end
