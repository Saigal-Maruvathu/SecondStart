class HomeController < ApplicationController
    def signup_signin
        if current_user
           redirect_to root_path 
        end
    end
    
    def welcome
    end
    
    def profilepage
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
<<<<<<< HEAD
=======

  def signup_signin
  end

  def homepage
    
  end
>>>>>>> 20f2dce742e303278520d544e07f8b235f21749b
end
