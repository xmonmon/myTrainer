Rails.application.routes.draw do

root 'site#index'
#users routes
get "/signup", to: "users#new"
post "/signup", to: "users#create"

get "/users/:id", to: "users#show", as: "show_user"
get "/users/:id/edit", to: "users#edit", as: "edit_user"
patch "/users/:id", to: "users#update", as: "update_user"
delete "/users/:id", to: "users#destroy", as: "delete_user"

#reviews routes
get "/reviews/:id/new", to: "reviews#new", as:"new_post"
delete "/reviews/:id", to: "reviews#destroy", as: "delete_post"
resources :reviews, except: [:new, :destroy]

get "/reviews", to: "reviews#index"
get "/reviews/:id", to: "reviews#show"

#the sessions
get "/login", to: "sessions#new"
get "/logout", to: "sessions#destroy"
resources :sessions, only: [:create]

# comment routes
get "/reviews/:id/comments", to: "comments#new", as: "new_comment"
post "/reviews/:id/comments", to: "comments#create"
get "reviews/:id/comments/:comment_id/edit", to: "comments#edit", as: "edit_comment"
patch "reviews/:id/comments/:comment_id/edit", to: "comments#update"
get "reviews/:id/comments/:comment_id/delete", to: "comments#destroy", as: "delete_comment"


  
end

#        Prefix Verb   URI Pattern                                        Controller#Action
#         signup GET    /signup(.:format)                                  users#new
#                POST   /signup(.:format)                                  users#create
#      show_user GET    /users/:id(.:format)                               users#show
#      edit_user GET    /users/:id/edit(.:format)                          users#edit
#    update_user PATCH  /users/:id(.:format)                               users#update
#    delete_user DELETE /users/:id(.:format)                               users#destroy
#       new_post GET    /reviews/:id/new(.:format)                         reviews#new
#    delete_post DELETE /reviews/:id(.:format)                             reviews#destroy
#        reviews GET    /reviews(.:format)                                 reviews#index
#                POST   /reviews(.:format)                                 reviews#create
#    edit_review GET    /reviews/:id/edit(.:format)                        reviews#edit
#         review GET    /reviews/:id(.:format)                             reviews#show
#                PATCH  /reviews/:id(.:format)                             reviews#update
#                PUT    /reviews/:id(.:format)                             reviews#update
#                GET    /reviews(.:format)                                 reviews#index
#                GET    /reviews/:id(.:format)                             reviews#show
#          login GET    /login(.:format)                                   sessions#new
#         logout GET    /logout(.:format)                                  sessions#destroy
#       sessions POST   /sessions(.:format)                                sessions#create
#    new_comment GET    /reviews/:id/comments(.:format)                    comments#new
#                POST   /reviews/:id/comments(.:format)                    comments#create
#   edit_comment GET    /reviews/:id/comments/:comment_id/edit(.:format)   comments#edit
#                PATCH  /reviews/:id/comments/:comment_id/edit(.:format)   comments#update
# delete_comment GET    /reviews/:id/comments/:comment_id/delete(.:format) comments#destroy
#           root GET    /                                                  site#index
