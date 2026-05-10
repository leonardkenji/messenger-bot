Rails.application.routes.draw do
  root to: "dashboard#index"

  get  "webhook", to: "messenger#verify"
  post "webhook", to: "messenger#receive"

  get  "dashboard", to: "dashboard#index"
  post "dashboard/scrape", to: "dashboard#scrape"

  resources :conversations, only: [:show] do
    member do
      patch :toggle_status
      patch :toggle_auto_reply
    end
    resources :notes, only: [:create], controller: "conversation_notes"
  end

  resources :messages
end
