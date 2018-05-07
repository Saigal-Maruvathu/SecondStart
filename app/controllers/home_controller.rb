class HomeController < ApplicationController
    def signup_signin
        if current_user
           redirect_to root_path 
        end
    end
    
    def welcome
    end
    
    def profile
        if !current_user
           redirect_to welcome_path 
        end
    end

    def logoutpage
    end

    def about
    end
  
  def contact
  end

  def signup_signin
  end

  def homepage
    
  end
end
