Stg::Application.routes.draw do
  resources :jobs


  resources :news


  get "static/home"

  get "static/about"

  get "static/contact"

  resources :official_profiles , :only => [:index, :show]
  root :to => 'static#home'

  resources :offices, :only => [:index, :show]


  resources :ministers, :only => [:index, :show]


  resources :job_positions, :only => [:index, :show]


  resources :mps, :only => [:index, :show]


  resources :mlas, :only => [:index, :show]


  resources :villages, :only => [:index, :show]


  resources :mandals, :only => [:index, :show]


  resources :districts, :only => [:index, :show]


  resources :state_cadres, :only => [:index, :show]


  resources :departments, :only => [:index, :show]


  resources :constitutions, :only => [:index, :show]


  devise_for :users

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  mount RailsAdminImport::Engine => '/rails_admin_import', :as => 'rails_admin_import'

  # The priority is based upon order of creation:
  # first created -> highest priority.

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
