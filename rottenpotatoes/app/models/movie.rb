class Movie < ActiveRecord::Base
    def self.get_similar_movies(movieId)
        director = Movie.find_by(id: movieId).director
        return nil if director.blank? || director.nil?
        Movie.where(director: director)
    end
    
    def self.all_ratings
        # return all unique ratings
        select(:rating).map(&:rating).uniq
    end
    def self.with_ratings(ratings_list)
        if(ratings_list && ratings_list.length)
            where(rating: ratings_list)
        else 
            all
        end
    end
end
