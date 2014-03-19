RailsBlog::Application.routes.draw do
  get "/" => 'page#home'
  get "/blogroll/:category" => 'page#blogroll'
  get "/page/create" => 'page#create'
  get "/page/:title" => 'page#static'
  get "/contact_us" => 'page#contact'
  post "/contact_us/submit" => 'page#contact_submit'
  post "/page/add" => 'page#add'
  
  get "/post/create" => 'post#create'
  get "/post/:id" => 'post#id'
  post "/post/add" => 'post#add'
  
  get "/category" => 'category#list'
  post "/category/add" => 'category#add'
  
  get "/user" => 'user#list'
  get "/user/:id" => 'user#id'
  post "/user/add" => 'user#add'
  
  post "/comment/add" => 'comment#add'
  
  get "/poll" => 'poll#list'
  get "/poll/create" => 'poll#create'
  get "/poll/:id/result" => 'poll#result'
  get "/poll/:id" => 'poll#id'
  post "/poll/add" => 'poll#add'
  post "/poll/:id/vote" => 'poll#vote'
  
  
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
