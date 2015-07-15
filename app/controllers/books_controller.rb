class BooksController < ApplicationController
  def index
  	@author = Author.find params[:author_id]
  end

  def new
  	@book = Book.new
  end

   def create
  	@author = Author.find params[:author_id]
  	@book = @author.books.new(book_params)
  	if @book.save
  		flash[:success] = "Successfully added a Book"
  		redirect_to author_books_path(@author)
  	else
  		render :new
  	end
  end

  def show
  	@book = Book.find params[:id]
  end

  def edit
  	@book = Book.find params[:id]
  end

  def update
  	@book = Book.find params[:id]
  	@book.update book_params
  	if @book.save
  		redirect_to author_books_path(@book.author)
  	else
  		render :edit
  end

  def destroy
  	@book = Book.find params[:id]
  	@book.destroy
  	redirect_to author_animals_path(@book.author)
  end

  private
end
