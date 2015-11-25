class TagController < ApplicationController
    
    private
        def review_params
          params.require(:tag).permit(:ratings, :name)
        end
end