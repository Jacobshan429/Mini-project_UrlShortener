Rails.application.routes.draw do
  resources :urls
  get ":short_url" => "urls#show"
end
