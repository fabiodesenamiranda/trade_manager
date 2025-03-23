Rails.application.routes.draw do
  resources :contacts
  resources :agents
  # Página inicial do sistema
  root "dashboards#index"

  # Recursos principais
  resources :import_processes do
    member do
      patch :update_status # Atualização assíncrona de status via Turbo Streams
    end
  end

  resources :export_processes
  resources :freight_quotes
  resources :cost_simulations

  # Gerenciamento de usuários com Devise
  devise_for :users

  # Dashboard e análise de dados
  get "dashboard", to: "dashboards#index"
  get "reports", to: "reports#index"

  # Sidekiq Web UI para monitorar tarefas assíncronas
  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  end
end
