class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  



# #****************INTEGRATING THE TWITTER API**********************
# get '/products/search' do
#   @q = params[:q]
#   file = open("http://search.twitter.com/search.json?q=#{URI.escape(@q)}")
#   @results = JSON.load(file.read)
#   erb :search_results
# end
# #*****************************************************************
# # WTF why did just moving this code block from the bottom to up here make it work??


# #***************INTEGRATING THE GOOGLE PRODUCTS API***************
# get '/products/search_google' do 
#   @q = params[:q]
#   file = open("https://www.googleapis.com/shopping/search/v1/public/products?key=AIzaSyBtm1EPiT8NUSsgTJhBb5dxlhGAi8FvLu4&country=US&q=#{URI.escape(@q)}", :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE)
#   @results = JSON.load(file.read)
#   erb :search_google
# end
# #*****************************************************************

  def product_search
    @q = params[:product_search_name]
    @results = Googleproductssearch.new(@q).search
  end

  def menu
  end

  def index
    @products = Product.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @review = Review.where(:product_id => params[:id])
    @products = Product.all

    @results = Twitterproductsearch.new(@product.name).search

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Cart successfully updated!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
