AdviceShare::Application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users

  root :to => "signups#new"

  match '/about',    to: 'static_pages#about',    via: 'get'
  match '/topics',    to: 'static_pages#topics',    via: 'get'
  match '/howItWorks',    to: 'static_pages#howItWorks',    via: 'get'
  match '/contact',    to: 'static_pages#contact',    via: 'get'
  match '/landingpage1',    to: 'static_pages#landingpage1',    via: 'get'
  match '/pricingpage',    to: 'static_pages#pricingpage',    via: 'get'

 resources :adviceareas do
    resources :sections
  end

  resources "signups", only: [:new, :create]

  resources "advisors", only: [:new, :create]

  resources "earlysignups", only: [:new, :create]

  resources :sections

 
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
