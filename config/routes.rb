
Rails.application.routes.draw do
  root 'recipients#index'
  resources :recipients do
    collection do
      get 'csv_output'
    end
  end
  resources :recipients do
    collection { post :import}
  end
end

