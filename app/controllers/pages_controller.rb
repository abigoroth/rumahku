class PagesController < ApplicationController
  def floor_plan
  end

  def request_date
    @park_space = ParkSpace.all
  end
end
