class BookmarksController < ApplicationController
    def create
        bookmark = Bookmark.find_or_create_by(user: @user, country_id: params[:country_id])
        if bookmark
            render json: { message: "Bookmark created." }
        else
            render json: { message: "Bookmark not created. Invalid user or country." }
        end
    end

    def destroy
        bookmark = Bookmark.find_by(country_id: params[:id])
        if bookmark
            bookmark.destroy
            render json: { message: "Bookmark destroyed." }
        else
            render json: { message: "Bookmark not found." }
        end
    end

    def index
        render json: {bookmarks: @user.bookmarks}
    end
end
