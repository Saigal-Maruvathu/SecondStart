class HomeController < ApplicationController
    def signup_signin
        if current_user
          render '/profile'
        end
    end

    def welcome
    end

    def profilepage
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
    @jobs = Post.where(category: "Jobs")
    @last_job = @jobs.last

    @shelters = Post.where(category: "Shelters")
    @last_shelter = @shelters.last

    @supplies = Post.where(category: "Supplies")
    @last_supplies = @supplies.last

    @meals = Post.where(category: "Meals")
    @last_meal = @meals.last

  end


end
