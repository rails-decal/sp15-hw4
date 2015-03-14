Rails.application.routes.draw do
    get "dogs", to: "dogs#home"
    get "dogs/new", to: "dogs#new"
    get "dogs/:id", to: "dogs#show", as: :dog
    get "users", to: "users#index"
    get "users/new", to: "users#new"
    get "users/:id", to: "users#show", as: :user
    post "users", to: "users#create"
end
