GamerPVP::Application.routes.draw do
  mount RailsAdmin::Engine => '/manage', :as => 'rails_admin'
  root 'pages#landing'
  
  scope "(:locale)", locale: /en|es|pt-BR/ do
    get '/' => 'pages#landing'
    get 'home' => 'pages#index', as: :home
    get 'main' => 'main#index', as: :main
    get 'choose' => 'main#choose', as: :choose
    get 'halloffame' => 'main#halloffame', as: :halloffame
    get 'main/newgame' => 'main#newgame', as: :newgame
    get 'main/newteam' => 'main#newteam', as: :newteam
    get 'main/notifications' => 'main#notifications', as: :notifications
    get 'main/report' => 'main#report', as: :report
    get 'ticket' => 'main#ticket', as: :ticket
    get 'bank' => 'main#bank', as: :bank
    get 'profile' => 'users#profile', as: :profile
    get 'feedback' => 'main#feedback', as: :feedback
    resources :users
    post 'login' => 'sessions#create', as: :new_session
    get 'logout' => 'sessions#destroy', as: :destroy_session
    post 'accounts' => 'accounts#create', as: :accounts
    post 'teams' => 'teams#create', as: :teams
    post 'message' => 'messages#create', as: :messages
    post 'user_statuses' => 'statuses#create', as: :user_statuses
    post 'auth/steam/callback' => 'accounts#steam'
    
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
