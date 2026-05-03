Rails.application.routes.draw do
  get  "webhook", to: "messenger#verify"
  post "webhook", to: "messenger#receive"
# root to: "definir depois"

resources :messages
end
