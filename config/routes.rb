Rails.application.routes.draw do
  root redirect_to: 'http://www.knoda.com'
  get '/:slug', to: 'application#show'
end
