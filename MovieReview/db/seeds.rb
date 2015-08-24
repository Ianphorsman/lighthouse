# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'json'
require 'pp'

data = JSON.load(File.open('db/movie_data.json', 'r').read)

movie_data = []
data.each do |movie|
    movie_data << {
        :title          => movie['title'],
        :plot           => movie['plot'],
        :description    => movie['simplePlot'],
        :genres         => movie['genres'].join(', '),
        :directors      => movie['directors'].map { |director| director['name'] }.join(', '),
        :writers        => movie['writers'].map { |writer| writer['name'] }.join(', '),
        :release_date   => movie['year'],
        :ranking        => movie['ranking'],
        :poster_url     => movie['urlPoster'],
        :runtime        => movie['runtime'].join(' ')
    }
end

movie_data.each do |movie|
    Movie.create(movie)
end



