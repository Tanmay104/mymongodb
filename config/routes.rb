Rails.application.routes.draw do
  
  get 'admins/home/home'
  get 'admins/home/index'
  get 'clients/companies/clientlist'
  devise_for :clients, controllers: { registrations: 'clients/registrations', sessions: 'clients/sessions'}
  
  devise_for :admins,  path_names: {
      sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: 'admins/registrations', sessions: 'admins/sessions'}
    
  namespace :clients do
   resources :companies
   resources :brands
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   unauthenticated do
     root to: 'admins/home#home', as: :authenticated
   end
   
  authenticated :admins do
     root to: 'admins/home#index', as: :admin
   end
   
  authenticated :clients do
     root to: 'clients/comapnies#index', as: :clients
   end

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
