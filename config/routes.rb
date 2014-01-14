AdviceShare::Application.routes.draw do

  #Blog Homepage
    #match '/blog',    to: 'blogposts#onlySignUpFormIndex',    via: 'get'

  #Blog Posts
    match '/blog/highly-coveted-professional-and-academic-positions',    to: 'blogposts#openingPost',    via: 'get'
    match '/blog',    to: 'blogposts#index',    via: 'get'
    match '/blog/Life-Hacks-for-Holiday-Season-Productivity',    to: 'blogposts#holidayProductivity',    via: 'get'
    match '/blog/Selecting-Applicants-For-Interviews',    to: 'blogposts#selectingCandidates',    via: 'get'

  #Blog Templates
    match '/blog/homepagetemplate',    to: 'blogposts#blogPostHomePageTemplate',    via: 'get'
    match '/blog/samplepost',    to: 'blogposts#blogPostTemplate',    via: 'get'
    match '/blog/postComingSoon',    to: 'blogposts#postNotReadyYet',    via: 'get'

  #Blog
    resources :blogsignups#, path: '/blog'
    get "blogposts/test"
    #match 'blog/',    to: 'blogsignups#index',    via: 'get'

  #Early Adopters
    root :to => "signups#new"
    resources :signups
    #resources "signups", only: [:new, :create]



  #Advisers
  resources "advisors", only: [:new, :create]

  #Static Pages
    match '/home',    to: 'static_pages#home',    via: 'get'
    match '/early-access',    to: 'static_pages#earlyaccess',    via: 'get'

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
