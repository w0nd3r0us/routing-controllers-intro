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

  def kitten
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

end
