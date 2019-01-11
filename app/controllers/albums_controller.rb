class AlbumsController < ApplicationController

  def index
    @album = Album.all
  end

  def new
    @album = Album.new()
  end

  def create
    @album = Album.new(name: params[:album][:name],
                       producer: params[:album][:producer],
                       status: params[:album][:status])
    if @album.save

    else

    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    @album.name = params[:album][:name]
    @album.producer = params[:album][:producer]
    @album.status = params[:album][:status]
  end

  def delete
    @album = Album.find(params[:id])
    @album.destroy
  end

end
