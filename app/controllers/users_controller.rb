class UsersController < ApplicationController
  def new
  end
    
    def profile
        
        if !current_user
           redirect_to welcome_path 
        end
        
    end
end
