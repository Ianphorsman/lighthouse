class MoviesController < ApplicationController

    before_filter :authenticate_user!

    def index
        @movies = Movie.all
    end

    def show
    end

    def show_all
        @movies = Movie.all
    end
end
