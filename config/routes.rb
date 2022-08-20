Rails.application.routes.draw do
  devise_for :users,
  controllers: { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'

  # ここにusersコントローラーのshowアクションのルーティングを追加する
  get '/users/:id', to: 'users#show', as: 'user'
  
  resources :posts, only: %i(index new create show destroy) do
    resources :photos, only: %i(create)
    resources :likes, only: %i(create destroy)
  end
  #onlyを使うと、自動で生成される7つのアクションのうちどのアクションのルーティングを追加するか絞り込むことができる

end
