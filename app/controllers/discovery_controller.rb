class DiscoveryController < ApplicationController

  def show
    if session[:index].nil?
      session[:index] = 0
    end
    session[:index] = (session[:index])%3 + 1
    @song = Song.find(session[:index])
    @song_title = @song.title
    @song_artist = @song.artist
    @image_path = '../assets/' + @song.image + '.jpg'
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
