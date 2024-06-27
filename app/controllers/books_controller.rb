class BooksController < ApplicationController
  def index
    # @books = Book.all # lazy load
    @books = Book.includes(:author).all # eager load
  end
end
