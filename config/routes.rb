HarmonyPlus::Application.routes.draw do
  resources :posts
  # mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)]
  resources :manager
  get 'mainframe', :to => 'mainframe#index', :format => false
  get 'contact', :to => 'mainframe#contact', :format => false
  get 'about_us', :to => 'mainframe#about_us', :format => false
  get 'detail', :to => 'mainframe#detail', :format => false
  get 'summer_academy', :to => 'mainframe#summer_academy', :format => false
  get 'future_planning', :to => 'mainframe#future_planning', :format => false
  get 'login', :to => 'login#login', :format => false
  root "mainframe#index"
  
  #stories
  get 'stories', :to => 'stories#stories', :format => false
end
