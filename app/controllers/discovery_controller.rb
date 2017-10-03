class DiscoveryController < ApplicationController

  def show
    @song = Song.find(1)
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
