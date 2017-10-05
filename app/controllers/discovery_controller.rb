class DiscoveryController < ApplicationController

  def show
    if session[:index].nil?
      session[:index] = 1
    end
    @song = Song.find(session[:index])
    @img = '../assets/' + @song.image + '.jpg'
  end

  def next
    session[:index] = (session[:index])%(Song.count)+ 1
    @song = Song.find(session[:index])
    @img = '../assets/' + @song.image + '.jpg'
    respond_to do |format|
      format.html { render 'show' }
      format.js { render 'show' }
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
