class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(name: params[:song][:name],
                     time_in_seconds: params[:song][:time_in_seconds].to_i,
                     file: params[:song][:file],
                     notes: params[:song][:notes],
                     comments: params[:song][:comments])

    if @song.save
      #redirect
    else
      #render
    end
  end


  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    @song.name = params[:song][:name]
    @song.time_in_seconds = params[:song][:time_in_seconds]
    @song.file = params[:song][:file]
    @song.notes = params[:song][:notes]
    @song.comments = params[:song][:comments]

    if @song.save
      #redirect
    else
      #render
    end

  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
  end
end
