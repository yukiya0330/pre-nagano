class Admin::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
  def create
    genre = Genre.new(genre_params)
    genre.save
    redirect_to admin_genres_path
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(genre_params)
    redirect_to admin_genres_path
  end
  
  private
  def genre_params
    params.permit(:genre_name)
  end
end
