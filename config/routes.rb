HarmonyPlus::Application.routes.draw do

  devise_for :users
  # mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)]
  resources :manager
  resources :applyb
  resources :applyi
  get 'mainframe', :to => 'mainframe#index', :format => false
  get 'contact', :to => 'mainframe#contact', :format => false
  get 'about_us', :to => 'mainframe#about_us', :format => false
  get 'summer_academy', :to => 'mainframe#summer_academy', :format => false
  get 'future_planning', :to => 'mainframe#future_planning', :format => false
  # get 'login', :to => 'manager#index', :format => false
  get 'b_bay_apply', :to => 'applyb#b_bay_apply', :format => false
  get 'ideal_apply', :to => 'applyb#ideal_apply', :format => false
  get 'success', :to => 'applyb#success', :format => false
  # get 'success_ideal', :to => 'applyb#success', :format => false
  get '/', :to => 'mainframe#index', :format => false
  get 'details', :to => 'mainframe#details', :format => false
  
  
  # chinese pages
  get 'cn_index', :to => 'mainframe#index_cn', :format => false
  get 'cn_b_bay_apply', :to => 'applyb#b_bay_apply_cn', :format => false
  get 'cn_ideal_apply', :to => 'applyb#ideal_apply_cn', :format => false
  get 'cn_summer_academy', :to => 'mainframe#summer_academy_cn', :format => false
  get 'cn_contact', :to => 'mainframe#contact_cn', :format => false
  get 'cn_details', :to => 'mainframe#details_cn', :format => false
  get 'cn_about_us', :to => 'mainframe#about_us_cn', :format => false
  get 'cn_future_planning', :to => 'mainframe#future_planning_cn', :format => false
  get 'cn_details', :to => 'mainframe#details_cn', :format => false
  root "mainframe#index"
  
  devise_scope :user do
    # get "signup", to: "devise/registrations#new"
    get "login" => "devise/sessions#new"
    get '/users/sign_out' => 'devise/sessions#destroy'
    get "logout", to: "devise/sessions#destroy"
    match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  end
  
  #stories
  get 'stories', :to => 'stories#stories', :format => false
  get 'cn_stories', :to => 'stories#stories_cn', :format => false
  get 'more_stories', :to => 'stories#morestories', :format => false
end
