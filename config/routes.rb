Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#home'
  resources :tweets, except:[:upddte, :edit]

end
