Rails.application.routes.draw do
  resources :lista
  get 'pagina_estatica/index'
  root "lista#new"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
