Rails.application.routes.draw do
  # Routes for the Input resource:
  # CREATE
  get "/inputs/new", :controller => "inputs", :action => "new"
  post "/create_input", :controller => "inputs", :action => "create"

  # READ
  get "/inputs", :controller => "inputs", :action => "index"
  get "/inputs/:id", :controller => "inputs", :action => "show"

  # UPDATE
  get "/inputs/:id/edit", :controller => "inputs", :action => "edit"
  post "/update_input/:id", :controller => "inputs", :action => "update"

  # DELETE
  get "/delete_input/:id", :controller => "inputs", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Resort resource:
  # CREATE
  get "/resorts/new", :controller => "resorts", :action => "new"
  post "/create_resort", :controller => "resorts", :action => "create"

  # READ
  get "/resorts", :controller => "resorts", :action => "index"
  get "/resorts/:id", :controller => "resorts", :action => "show"

  # UPDATE
  get "/resorts/:id/edit", :controller => "resorts", :action => "edit"
  post "/update_resort/:id", :controller => "resorts", :action => "update"

  # DELETE
  get "/delete_resort/:id", :controller => "resorts", :action => "destroy"
  #------------------------------

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
