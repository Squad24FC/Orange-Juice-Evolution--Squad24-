class LessonsController < ApplicationController
  before_action :get_subject

  def index
    @lessons = @subject.lessons
  end

  def new
    @lesson = @subject.lessons.build
  end

  def create
    @lesson = @subject.lessons.build(lesson_params)
    if @lesson.save
      redirect_to subject_lessons_path(@subject)
    else
      render :new
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      redirect_to subject_lessons_path(@subject)
    else
      render :new
    end
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    redirect_to subject_lessons_path
  end

  def get_subject
    @subject = Subject.find(params[:subject_id])
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :lesson_type, :author, :duration, :source_url)
  end
end
