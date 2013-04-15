
require 'open-uri'


class Googleproductssearch

  def initialize(query)
  	@query = query
  end

  def search
    file = open("https://www.googleapis.com/shopping/search/v1/public/products?key=AIzaSyBtm1EPiT8NUSsgTJhBb5dxlhGAi8FvLu4&country=US&q=#{URI.escape(@query)}", :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE)
    JSON.load(file.read)
  end

end