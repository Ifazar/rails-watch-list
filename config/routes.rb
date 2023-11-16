Rails.application.routes.draw do

  resources :lists, only: %i[index new show create]

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  
  resources :bookmarks, only: :destroy
end
