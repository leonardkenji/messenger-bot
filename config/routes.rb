Rails.application.routes.draw do
  get "messenger/verify"
  get "messenger/receive"
# root to: "definir depois"

resources :messages
end
