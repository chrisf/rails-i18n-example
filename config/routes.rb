Rails.application.routes.draw do
  root 'hello#index'

  scope "(:locale)", locale: /en|es/ do
    get 'hello/index'
    get 'hello/about'
    # resources :books
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
