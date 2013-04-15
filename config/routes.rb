RailsStore2::Application.routes.draw do
 

  resources :reviews
  resources :products

  match '/product_search' => 'products#product_search', :as => :product_search 

  # get 'products/product_search', :to => 'products#product_search', :as => product_search

  # get '/reviews(.:format)', :to => 'reviews#index', :as => reviews 
  # post '/reviews(.:format)', :to => 'reviews#create'
  # get '/reviews/new(.:format)', :to => 'reviews#new', :as => new_review 
  # get '/reviews/:id/edit(.:format)', :to => 'reviews#edit', :as => edit_review
  # get '/reviews/:id/(.:format)', :to => 'reviews#show', :as => review 
  # put '/reviews/:id(.format)', :to => 'reviews#update'
  # delete '/reviews/:id(.:format)', :to => 'reviews#destroy'

  # get '/products(.:format)', :to => 'products#index', :as => products
  # post '/products(.:format)', :to => 'products#create'
  # get '/products/new(.:format)', :to => 'products#new', :as => new_product
  # get '/products/:id/edit(.:format)', :to => 'products#edit', :as => edit_product
  # get '/products/:id/(.:format)', :to => 'products#show', :as => product
  # put '/products/:id(.format)', :to => 'products#update'
  # delete '/products/:id(.:format)', :to => 'products#destroy'

  root :to => 'products#menu'

# get '/supernewhome', :to => home#index, :as => matt 
# (this makes a new route to /supernewhome, and its called matt. 
# to create a link to it using helpers, write <%= link_to "Home!", matt_path %>

#   # The priority is based upon order of creation:
#   # first created -> highest priority.



  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
