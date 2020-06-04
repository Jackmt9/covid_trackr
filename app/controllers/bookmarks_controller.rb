class BookmarksController < ApplicationController
    def create
        bookmark = Bookmark.create(user: @user, country_id: params[:country_id])
        if bookmark
            render json: { message: "Bookmark created." }
        else
            render json: { message: "Bookmark not created. Invalid user or country." }
        end
    end

    def destroy
        bookmark = Bookmark.find(params[:id])
        if bookmark
            bookmark.destroy
            render json: { message: "Bookmark destroyed." }
        else
            render json: { message: "Bookmark not found." }
        end
    end
end
