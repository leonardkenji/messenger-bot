Rails.application.routes.draw do
root to: "pages#home"

  get  "webhook", to: "messenger#verify"
  post "webhook", to: "messenger#receive"

resources :messages
end
