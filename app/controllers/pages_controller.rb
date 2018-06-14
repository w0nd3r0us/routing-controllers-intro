class PagesController < ApplicationController

  def welcome
    @header = "This is a test"
  end


  def about
    # render :about
  end

  def contest
    @header = "This is another test"
    # render :contest
  end

  def contest1
    @header = "this is a secondary test"
    render :contest
  end

end
