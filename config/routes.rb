Blogger::Application.routes.draw do
  resources :articles
  get "/articles/:id/:extra", to: "article#show", as: "thingy"
end
