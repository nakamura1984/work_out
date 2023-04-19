class CalendersController < ApplicationController
  def index
    @calenders = Calender.all
    @calender = Calender.new
  end
  
end
