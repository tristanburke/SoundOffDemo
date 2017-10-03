class DiscoveryController < ApplicationController
  respond_to :html, :js

  def show
    if session[:index].nil?
      session[:index] = 0
    end
    session[:index] = (session[:index])%3 + 1

    @song = Song.find(session[:index])
    @image_path = '../assets/' + @song.image + '.jpg'
    respond_to do |format|
      format.html {render :partial => './../views/discovery/show.html.erb'}
      format.js { }
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
