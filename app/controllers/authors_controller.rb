class AuthorsController < ApplicationController
before_action :find_author, only:[:show, :edit, :update, :destroy]

  def index
  	@authors = Author.all
  end

  def new
  	@author = Author.new
  end

  def create
  	@author = Author.new(author_params)
  	if @author.save
  		flash[:success] = "Successfully Added an Author"
  		redirect_to authors_path
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
  	@author.update author_params
  	if @author.save
  		redirect_to author_path(@author), notice: "Updated Author"
  	else
  		render :edit
  	end
  end

  def destroy
  	@author.destroy
  	redirect_to author_path, alert: "Deleted Author"
  end

  private

  def find_author 
  	@author = Author.find params[:id]
  end

  def author_params
  	params.require(:author).permit(:first_name, :last_name, :age)
  end
end
