Rails.application.routes.draw do
  root 'authors#index'

  resources :authors do
    resources :books, shallow: true
  end

#   Prefix Verb   URI Pattern                             Controller#Action
#            root GET    /                                       authors#index
#    author_books GET    /authors/:author_id/books(.:format)     books#index
#                 POST   /authors/:author_id/books(.:format)     books#create
# new_author_book GET    /authors/:author_id/books/new(.:format) books#new
#       edit_book GET    /books/:id/edit(.:format)               books#edit
#            book GET    /books/:id(.:format)                    books#show
#                 PATCH  /books/:id(.:format)                    books#update
#                 PUT    /books/:id(.:format)                    books#update
#                 DELETE /books/:id(.:format)                    books#destroy
#         authors GET    /authors(.:format)                      authors#index
#                 POST   /authors(.:format)                      authors#create
#      new_author GET    /authors/new(.:format)                  authors#new
#     edit_author GET    /authors/:id/edit(.:format)             authors#edit
#          author GET    /authors/:id(.:format)                  authors#show
#                 PATCH  /authors/:id(.:format)                  authors#update
#                 PUT    /authors/:id(.:format)                  authors#update
#                 DELETE /authors/:id(.:format)                  authors#destroy

end
