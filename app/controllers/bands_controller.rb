class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(name: params[:band][:name],
                     contact_number: params[:band][:contact_number],
                     website: params[:band][:website])

    if @band.save
      #redirect
    else
      #render
    end
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])

    @band.name = params[:band][:name]
    @band.contact_number = params[:band][:contact_number]
    @band.website = params[:band][:website]

  end

  def destroy
    @band = Band.find(params[:id])
    @band.destroy
  end
end
