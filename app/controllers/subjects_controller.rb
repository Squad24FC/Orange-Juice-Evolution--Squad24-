class SubjectsController < ApplicationController
  before_action :get_chapter

  def index
    @subjects = @chapter.subjects
  end

  def new
    @subject = @chapter.subjects.build
  end

  def create
    @subject = @chapter.subjects.build(subject_params)
    if @subject.save
      redirect_to chapter_subjects_path(@chapter)
    else
      render :new
    end
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      redirect_to chapter_subjects_path(@chapter)
    else
      render :new
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    redirect_to chapter_subjects_path
  end

  def get_chapter
    @chapter = Chapter.find(params[:chapter_id])
    @chapters = Chapter.all
  end

  private

  def subject_params
    params.require(:subject).permit(:name)
  end
end
