Rails.application.routes.draw do

  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale
  devise_for :users
  root             'static_pages#home'
  get 'aboutUs' => 'static_pages#aboutUs'
  get 'userLogged'    => 'static_pages#userLogged'
  get 'search_name' => 'search#search_name'
  get 'search_tag' => 'search#search_tag'
  get 'allUsers' => 'users#index'
  get 'approveStores' => 'stores#approveStores'
  put 'approveStores' => 'stores#approveStores'
  get 'approve' => 'stores#approve'
  get 'mystores' => 'users#mystores'
  
  resources :stores do
    resources :reviews, except: [:show, :index] #para que reviews este detro de stores como /store/movie_id/reviews
  end
  
  resources :users do
    resources :reviews, only: [:index, :destroy, :edit]
  end

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
