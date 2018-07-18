Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  get "/rsvp", to: "rsvp#new", as: "new_rsvp"
  post "/rsvp", to: "rsvp#create"

  get "/invite", to: "main#invite", as: "invite"
  get "/accomodations", to: "main#accomodations", as: "accomodations"
  get "/info", to: "main#info", as: "info"

  root "main#index"
end
