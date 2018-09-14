class PagesController < ApplicationController
  def residentlist
  end

  def jeng2
  end
  
  def space_rental
  end

  def admin
    render layout: "admin"
  end

  def user
    render layout: "user"
  end

  def guard
    render layout: "guard"
  end
end
