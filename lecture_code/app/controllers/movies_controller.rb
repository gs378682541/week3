class MoviesController < ApplicationController
  def edit
    @movie = Movie.find_by_id(params[:id])
  end
  def update
    @movie = Movie.find_by_id(params[:id])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to movies_url
  end
  def destroy
    @movie = Movie.find_by_id(params[:id])
    @movie.destroy
    redirect_to movies_url
  end
  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to movies_url
  end
  def new

  end
  def details

    @movie = Movie.find_by_id(params[:id])

    # render 'hello'
    # render text: 'Hello'
    # render
  end

  def index
    @movies =  Movie.all

    # @title = params["title"] || "Movies"

    @title = params[:title] if params[:title].present?
    @title ||= "Movies"
    # @title = @title || "Movies"


    # querystring_title = params["title"]

    # if querystring_title.present?
    #   @title = querystring_title
    # end

  end

end
