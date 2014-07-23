require 'domain_constraint.rb'

Backend::Application.routes.draw do
  # added for attachinary

  mount Attachinary::Engine => "/attachinary"

     constraints (DomainConstraint.new('www.iwillbuyanybike.co.uk')) do
    get '/', to: 'iwill#index'




     end

     constraints (DomainConstraint.new('www.iwillbuyanyhonda.co.uk')) do
     get '/', to: 'iwill#index'
     end
     resources :submission
     resources :iwill
     get 'index' => 'iwill#index'
     get 'contact' => 'iwill#contact'
     post 'contact' => 'iwill#contact'
     post 'contact_us' => 'iwill#contact_us'
     get 'valuation' => 'iwill#valuation'
     get 'featured' => 'iwill#featured'
     get 'create' => 'iwill#create'
     post 'create' => 'iwill#create' #controller only no page
     get 'faq' => 'iwill#faq'

 #   constraints (DomainConstraint.new(['site.com', 'www.site.com'])) do
 #     root to: 'desktop#index'

 #   end

  resources :bikes




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

  #root :to => 'bikes#index'   rails 4 didnt like
  root :to => 'iwill#index'



  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
