Rails.application.routes.draw do
  resources :projects
  namespace :admin do
    get 'res/index'
  end


  get 'reseller' , to:'user#resellerPortal'
  get 'api' ,to:'api_call_logs#index'
  get 'hello' , to:'gallery#sahil' , as:'hello'
  get 'users' , to:'user#index'
  get 'user/practice'
  get 'home/index'
  get 'new',to: 'user#new' , as:'new'
  get 'users' , to:'user#create'
  get 'home/RentHome'
  resources :friends
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#index"

  resources :photo do
    member do 
      get :verify_author
    end
    collection do
      get :verified_list
    end
  end
  resources :gallery
  get 'sign_up/SignupPages'
  get 'sign_up/LoginPages'
  get 'posts/title'

  # get 'About' => 'pages#About'
  # get 'posts/title',to:"posts#title"
  # get '/posts/:id' ,to:"posts#new"
  

  resources :posts
end
