Rails.application.routes.draw do

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  resources :songs
  resources :playlists
  resources :song_performed_bies
  resources :song_belongs_tos
  resources :included_ins
  resources :contains
  resources :artist_belong_tos
  resources :artist_belongs_tos
  resources :collaborates_ins
  resources :request_access_tos
  resources :playlists
  resources :songs
  resources :genres
  resources :users
  resources :artists
  resources :albums
  resources :countries
  resources :countries
  resources :follows
  resources :users
  resources :songs
  resources :playlists
  resources :countries
  resources :artists
  resources :albums
  resources :genres
  
  get 'my_playlists/' => 'playlists#my_playlists' 
  
  get 'requests/' => 'request_access_tos#index' 
  
  get 'admin/' => 'admin#new'   
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'root#home'

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
