Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" },
             :path => 'accounts', path_names: {sign_in: "login", sign_out: "logout"}
  root to: "purchases#index"
  resources :purchases do
    collection { post :upload }
  end
end

