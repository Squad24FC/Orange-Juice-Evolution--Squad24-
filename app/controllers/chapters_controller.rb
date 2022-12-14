class ChaptersController < ApplicationController
    def index
        @chapters = Chapter.all
      end

      def new
        @chapter = Chapter.new
      end

      def create
        @chapter = Chapter.new(chapter_params)
        if @chapter.save
          redirect_to chapter_path(@chapter)
        else
          render :new
        end
      end

      def show
        @chapter = Chapter.find(params[:id])
      end

      def edit
        @chapter = Chapter.find(params[:id])
      end

      def update
        @chapter = Chapter.find(params[:id])
        if @chapter.update(chapter_params)
          redirect_to chapter_path(@chapter)
        else
          render :new
        end
      end

      def destroy
        @chapter = Chapter.find(params[:id])
        @chapter.destroy

        redirect_to chapters_path
      end

      private

      def chapter_params
        params.require(:chapter).permit(:name, :thumb_url)
      end
end
