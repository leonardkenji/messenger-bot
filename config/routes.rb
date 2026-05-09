Rails.application.routes.draw do
root to: "dashboard#index"

  get  "webhook", to: "messenger#verify"
  post "webhook", to: "messenger#receive"

  get  "dashboard", to: "dashboard#index"
  post "dashboard/scrape", to: "dashboard#scrape"

  resources :messages
end
