Rails.application.routes.draw do
  devise_for :users
  
  
  # Routes for the Capsule resource:
  # CREATE
  get "/initiate_capsule", :controller => "capsules", :action => "initiate"
  get "/capsules/new/:type", :controller => "capsules", :action => "new"
  post "/create_capsule", :controller => "capsules", :action => "create"
  
  get "/capsules/:id/choose_recipients", :controller => "capsules", :action => "choose_recipients"
 
  # READ
  get "/capsules", :controller => "capsules", :action => "index"
  get "/capsules/:id", :controller => "capsules", :action => "show"

  # UPDATE
  get "/capsules/:id/edit", :controller => "capsules", :action => "edit"
  post "/update_capsule/:id", :controller => "capsules", :action => "update"

  # DELETE
  get "/delete_capsule/:id", :controller => "capsules", :action => "destroy"
  #------------------------------

  # Routes for the Sent_capsule resource:
  # CREATE
  get "/sent_capsules/new", :controller => "sent_capsules", :action => "new"
  post "/create_sent_capsule", :controller => "sent_capsules", :action => "create"

  # READ
  get "/sent_capsules", :controller => "sent_capsules", :action => "index"
  get "/sent_capsules/:id", :controller => "sent_capsules", :action => "show"

  # UPDATE
  get "/sent_capsules/:id/edit", :controller => "sent_capsules", :action => "edit"
  post "/update_sent_capsule/:id", :controller => "sent_capsules", :action => "update"

  # DELETE
  get "/delete_sent_capsule/:id", :controller => "sent_capsules", :action => "destroy"
  #------------------------------

  # Routes for the Group_member resource:
  # CREATE
  get "/group_members/new", :controller => "group_members", :action => "new"
  post "/create_group_member", :controller => "group_members", :action => "create"

  # READ
  get "/group_members", :controller => "group_members", :action => "index"
  get "/group_members/:id", :controller => "group_members", :action => "show"

  # UPDATE
  get "/group_members/:id/edit", :controller => "group_members", :action => "edit"
  post "/update_group_member/:id", :controller => "group_members", :action => "update"

  # DELETE
  get "/delete_group_member/:id", :controller => "group_members", :action => "destroy"
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # Routes for the Friend resource:
  # CREATE
  get "/friends/new", :controller => "friends", :action => "new"
  post "/create_friend", :controller => "friends", :action => "create"

  # READ
  get "/friends", :controller => "friends", :action => "index"
  get "/friends/:id", :controller => "friends", :action => "show"

  # UPDATE
  get "/friends/:id/edit", :controller => "friends", :action => "edit"
  post "/update_friend/:id", :controller => "friends", :action => "update"

  # DELETE
  get "/delete_friend/:id", :controller => "friends", :action => "destroy"
  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
