class DiscoveryController < ApplicationController
  respond_to :js, :html

  def show
    if session[:index].nil?
      session[:index] = 0
    end
    session[:index] = (session[:index])%3 + 1
    @song = Song.find(session[:index])
    @img = '../assets/' + @song.image + '.jpg'
    respond_to do |format|
      format.html
      format.js
    end
  end

  def toggle
  end

  def index
  end

  def new
    # default: render 'new' template
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
