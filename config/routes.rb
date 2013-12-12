AdviceShare::Application.routes.draw do

  get "blogposts/test"
  #Blog
    resources :blogsignups#, path: '/blog'
    #match 'blog/',    to: 'blogsignups#index',    via: 'get'

  #Blog posts
    
    match '/blog',    to: 'blogposts#index',    via: 'get'
    match '/blog/homepagetemplate',    to: 'blogposts#blogPostHomePageTemplate',    via: 'get'
    match '/blog/samplepost',    to: 'blogposts#blogPostTemplate',    via: 'get'
    #match '/blog/this_test',    to: 'signups#this_test',    via: 'get'
    #match '/blog/i-am-calling-this-page-this',    to: 'signups#i-am-calling-this-page-this',    via: 'get'
    #match '/this_test',    to: 'signups#this_test',    via: 'get'

  #Early Adopters
    root :to => "signups#new"
    resources :signups
    #resources "signups", only: [:new, :create]

  #Advisers
  resources "advisors", only: [:new, :create]

  #Static Pages
    match '/about',    to: 'static_pages#about',    via: 'get'
    match '/topics',    to: 'static_pages#topics',    via: 'get'
    match '/howItWorks',    to: 'static_pages#howItWorks',    via: 'get'
    match '/contact',    to: 'static_pages#contact',    via: 'get'

  
  #Users and Admin
    ActiveAdmin.routes(self)
    devise_for :users

  #Other
    resources "earlysignups", only: [:new, :create] 



 
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
