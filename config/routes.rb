MSMarket::Application.routes.draw do

  get "worlds/index"

  get "worlds/show"

  get "worlds/edit"

  get "worlds/create"

  get "characters/new"

  get "characters/edit"

  get "characters/destroy"

   resources :users do
    member do

    end
  end
  resources :sessions, :only => [:new, :create, :destroy]
  resources :characters
  resources :worlds, :only => [:index, :create, :destroy]

  root :to => 'pages#home'
  get "pages/home"
  get "pages/about"
  get "pages/contact"

  get "characters/my_characters"

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'

  match "/signin",  :to => 'sessions#new'
  match "/signout", :to => 'sessions#destroy'

  # user routes
  match "/signup", :to => 'users#new'
  match "/my_characters", :to => 'users#my_characters'

  match "/createcharacter", :to => 'characters#new'

  match "/worlds", :to => "worlds#index"



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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
