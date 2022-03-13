Rails.application.routes.draw do
  root 'page#index'

  get "/page", to: "page#index"

  # following are the route for voter in page controller
  get "/page/voter", to: "page#new"

  post "/page/voter/create_voter", to: "page#create_voter"

  get "/page/voter/vote", to: "page#vote"

  post "/page/voter/voting_above", to: "page#voting_above"

  post "/page/voter/voting_below", to: "page#voting_below"

  # following are the route for commissioner in candidate controller
  get "/page/admin", to: "candidate#index"

  get "/page/admin/new", to: "candidate#new"

  post "/page/admin/create", to: "candidate#create_candidate"

  get "/page/admin/view_candidate", to: "candidate#view_candidate"



  get "/page/admin/show_winning", to: "candidate#show_winning"



  post "/page/admin/update", to: "candidate#update"
  resources :candidate, except: [:destroy]
  delete 'candidate/:id/delete' => 'candidate#destroy', as: 'candidate_delete'
  get 'candidate/:id/delete' => 'candidate#destroy'
  get 'candidate/:id/edit' => 'candidate#edit'



end
