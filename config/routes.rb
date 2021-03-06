Rails.application.routes.draw do
    mount_devise_token_auth_for 'User', at: '/auth', skip: [:omniauth_callbacks]
    resources :pings, only: [:create, :index]
end
