class BookmarksController < ApplicationController

  def index
    @bookmark = @bookmark.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def new
    @bookmark = Bookmark.new
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark)
  end
end
