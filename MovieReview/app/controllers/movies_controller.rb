class MoviesController < ApplicationController

    def index
        @movies = Movie.all
    end

    def show
    end

    def show_all
    end
end
