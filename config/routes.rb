Rails.application.routes.draw do
  get '/:slug', to: 'application#show'
end
