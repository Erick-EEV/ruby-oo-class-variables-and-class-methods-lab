require 'pry'
class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists = []
@@genres = []
      def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

        def self.count
            @@artists.count
        end

        def self.artists
            @@artists.uniq
        end

        def self.genres
            @@genres.uniq
        end

        def self.genre_count
            genre_count = @@genres.each_with_object(Hash.new(0)) do |genre, new_hash|
                new_hash[genre] += 1  
             end
        end
        # genre_count = @@genres.each_with_object(Hash.new) do |key, empty_hash|
            #     if empty_hash[key]
            #         empty_hash[key] += 1
            #     else
            #         empty_hash[key]
            #     end
            # end
            # genre_count

            def self.artist_count
            artist_count = @@artists.each_with_object(Hash.new(0)) do |artist, new_hash|
                new_hash[artist] += 1
                end
            end
        end
