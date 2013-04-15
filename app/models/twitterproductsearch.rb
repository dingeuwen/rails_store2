
require 'open-uri'
require 'json'
require 'uri'


class Twitterproductsearch < Object

  def initialize(query)
  	@query = query
  end

  def search
  	# NOTE THAT THERE IS STILL A BUG HERE. GSUB ERROR WITH THE URI ESCAPE AGAIN
    file = open("http://search.twitter.com/search.json?q=#{URI.escape(@query)}")
    @results = JSON.load(file.read)
  end

end


 