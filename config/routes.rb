HarmonyPlus::Application.routes.draw do

  resources :posts
  devise_for :users
  # mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)]
  resources :manager
  resources :applyb
  resources :applyi
  get 'mainframe', :to => 'mainframe#index', :format => false
  get 'contact', :to => 'mainframe#contact', :format => false
  get 'about_us', :to => 'mainframe#about_us', :format => false
  get 'detail', :to => 'mainframe#detail', :format => false
  get 'summer_academy', :to => 'mainframe#summer_academy', :format => false
  get 'future_planning', :to => 'mainframe#future_planning', :format => false
  # get 'login', :to => 'manager#index', :format => false
  get 'b_bay_apply', :to => 'applyb#b_bay_apply', :format => false
  get 'ideal_apply', :to => 'applyi#ideal_apply', :format => false
  get 'success_b_bay', :to => 'applyb#success', :format => false
  get 'success_ideal', :to => 'applyi#success', :format => false
  get '/', :to => 'mainframe#index', :format => false

  root "mainframe#index"
  
  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login" => "devise/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
    get "logout", to: "devise/sessions#destroy"
    match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  end
  
  #stories
  get 'stories', :to => 'stories#stories', :format => false
end
