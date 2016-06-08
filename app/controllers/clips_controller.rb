class ClipsController < ApplicationController
  def index
    # @clips = current_viewer.clips
    @clips = Clip.all
  end

  def show
    @clip = Clip.find(params[:id])
    @full_link = @clip.imbed
    @full_link.slice!("https://www.youtube.com/watch?v=")
    @video_link = @full_link
  end

  def new
    @clip = Clip.new
  end

  def create
    @clip = Clip.new
    @clip.imbed = params[:imbed]
    @clip.private = params[:private]
    @clip.rating = params[:rating]
    @clip.source = params[:source]
    @clip.title = params[:title]
    @clip.notes = params[:notes]
    @clip.address_id = params[:address_id]
    @clip.category_id = params[:category_id]

    if @clip.save
      redirect_to "/clips", :notice => "Clip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @clip = Clip.find(params[:id])
  end

  def update
    @clip = Clip.find(params[:id])

    @clip.imbed = params[:imbed]
    @clip.private = params[:private]
    @clip.rating = params[:rating]
    @clip.source = params[:source]
    @clip.title = params[:title]
    @clip.notes = params[:notes]
    @clip.address_id = params[:address_id]
    @clip.category_id = params[:category_id]

    if @clip.save
      redirect_to "/clips", :notice => "Clip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @clip = Clip.find(params[:id])

    @clip.destroy

    redirect_to "/clips", :notice => "Clip deleted."
  end
end
