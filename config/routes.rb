Rails.application.routes.draw do

  post 'sessions/login'     => 'sessions#create'
  post 'users/create'       => 'users#create'
  post 'users/verify_email' => 'users#verify_email'
  post 'users/edit'         => 'users#edit'
  post 'markings/create'    => 'markings#create'
  post 'pevs/create'        => 'pevs#create'
  post 'pevs/edit'          => 'pevs#edit'
  post 'markings/edit'      => 'markings#edit'

  get  'profiles'       => 'profiles#index'
  get  'markings'       => 'markings#index'
  get  'pevs'           => 'pevs#index'
  get  'pev_types'      => 'pev_types#index'
  get  'marking_types'  => 'marking_types#index';
  get  'pevs/getonepev' => 'pevs#getOnePev'
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
  get  'marking_types/:id' => 'marking_types#find'
end
