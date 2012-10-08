class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.find_similar(movie)
    Movie.find(:all, :conditions => ["id != '#{movie.id}' AND director = '#{movie.director}'"])
  end
end
