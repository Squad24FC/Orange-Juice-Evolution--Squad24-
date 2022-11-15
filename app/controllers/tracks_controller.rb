class TracksController < ApplicationController

  def index
    @tracks = Track.all
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      redirect_to track_path(@track)
    else
      render :new
    end
  end

  def show
    @track = Track.find(params[:id])
    @chapter_completed = false
    @lessons_types = []
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      redirect_to track_path(@track)
    else
      render :new
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy

    redirect_to root_path
  end

  private

  def track_params
    params.require(:track).permit(:name, :description, :thumb_url)
  end
end
