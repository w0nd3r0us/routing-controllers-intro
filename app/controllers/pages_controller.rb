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

end
