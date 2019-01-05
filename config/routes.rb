Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :api do

    get "camps" => "camps#index"
    get "camps/:id" => "camps#show"
    post "camps" => "camps#create"
    patch "camps/:id" => "camps#update"

    get "clinics" => "clinics#index"
    get "clinics/:id" => "clinics#show"
    post "clinics" => "clinics#create"

  end


end
