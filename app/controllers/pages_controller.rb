class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten,:kittens]

  def welcome
    @header = "This is a test"
  end


  def about
    # render :about
  end

  def contest
    @header = "This is another test"
    # render :contest
    flash[:notice] = "Sorry, the contest has ended"
    redirect_to root_path
  end

  def contest1
    @header = "this is a secondary test"
    render :contest
  end

  def kitten
    # set_kitten_url
  end

  def kittens
    # set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
    if params[:magic_word] == "blue"
      # render :secrets
    else
      flash[:alert] = "Sorry, you're not authorized to see that page!"
      redirect_to root_url
    end
  end

end
