Rails.application.routes.draw do

root 'site#index'

# USER routes
get "/signup", to: "users#new"
post "/signup", to: "users#create"

get "/users/:id", to: "users#show", as: "show_user"
get "/users/:id/edit", to: "users#edit", as: "edit_user"
patch "/users/:id", to: "users#update", as: "update_user"
delete "/users/:id", to: "users#destroy", as: "delete_user"

# TRAINER ROUTES
get "/signup/trainers", to: "trainers#new"
post "/signup/trainers", to: "trainers#create"

get "/trainers/:id", to: "trainers#show", as: "show_trainer"
get "/trainers/:id/edit", to: "trainers#edit", as: "edit_trainer"
patch "/trainers/:id", to: "trainers#update", as: "update_trainer"
delete "/trainers/:id", to: "trainers#destroy", as: "delete_rainer"

# REVIEWS routes
get "/reviews/new", to: "reviews#new", as:"new_review"
delete "/reviews/:id", to: "reviews#destroy", as: "delete_review"
resources :reviews, except: [:new, :destroy]

get "/reviews", to: "reviews#index"
get "/reviews/:id", to: "reviews#show"
get "/reviews/:id/edit", to: "reviews#edit"

# SESSION ROUTES
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
resources :sessions, only: [:create]

# COMMENTS routes
get "/reviews/:id/comments", to: "comments#new", as: "new_comment"
post "/reviews/:id/comments", to: "comments#create"
get "reviews/:id/comments/:comment_id/edit", to: "comments#edit", as: "edit_comment"
patch "reviews/:id/comments/:comment_id/edit", to: "comments#update"
get "reviews/:id/comments/:comment_id/delete", to: "comments#destroy", as: "delete_comment"


  
end

#          Prefix Verb   URI Pattern                                        Controller#Action
#            root GET    /                                                  site#index
#          signup GET    /signup(.:format)                                  users#new
#                 POST   /signup(.:format)                                  users#create
#       show_user GET    /users/:id(.:format)                               users#show
#       edit_user GET    /users/:id/edit(.:format)                          users#edit
#     update_user PATCH  /users/:id(.:format)                               users#update
#     delete_user DELETE /users/:id(.:format)                               users#destroy
# signup_trainers GET    /signup/trainers(.:format)                         trainers#new
#                 POST   /signup/trainers(.:format)                         trainers#create
#    show_trainer GET    /trainers/:id(.:format)                            trainers#show
#    edit_trainer GET    /trainers/:id/edit(.:format)                       trainers#edit
#  update_trainer PATCH  /trainers/:id(.:format)                            trainers#update
#   delete_rainer DELETE /trainers/:id(.:format)                            trainers#destroy
#        new_post GET    /reviews/:id/new(.:format)                         reviews#new
#     delete_post DELETE /reviews/:id(.:format)                             reviews#destroy
#         reviews GET    /reviews(.:format)                                 reviews#index
#                 POST   /reviews(.:format)                                 reviews#create
#     edit_review GET    /reviews/:id/edit(.:format)                        reviews#edit
#          review GET    /reviews/:id(.:format)                             reviews#show
#                 PATCH  /reviews/:id(.:format)                             reviews#update
#                 PUT    /reviews/:id(.:format)                             reviews#update
#                 GET    /reviews(.:format)                                 reviews#index
#                 GET    /reviews/:id(.:format)                             reviews#show
#           login GET    /login(.:format)                                   sessions#new
#          logout GET    /logout(.:format)                                  sessions#destroy
#        sessions POST   /sessions(.:format)                                sessions#create
#     new_comment GET    /reviews/:id/comments(.:format)                    comments#new
#                 POST   /reviews/:id/comments(.:format)                    comments#create
#    edit_comment GET    /reviews/:id/comments/:comment_id/edit(.:format)   comments#edit
#                 PATCH  /reviews/:id/comments/:comment_id/edit(.:format)   comments#update
#  delete_comment GET    /reviews/:id/comments/:comment_id/delete(.:format) comments#destroy
