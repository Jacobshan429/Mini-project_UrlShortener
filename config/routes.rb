Rails.application.routes.draw do
  resources :urls
  get ":short_url", to: "urls#show"

end
