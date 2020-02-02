# frozen_string_literal: true

class MoviesController < ApplicationController
  def index
    @movie = Movie.all
    @user_rol = User.find(current_user.id).user_type
  end

  def show
    @user_rol = User.find(current_user.id).user_type
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    Movie.create(movie_params)
    redirect_to movies_path
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movies_path
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy

    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :duration, :synopsis, :genre, :trailer, :image, :big_image)
  end

  def rol
    user_rol = User.find(current_user.id).user_type

    user_rol == 'admin'
  end
end
