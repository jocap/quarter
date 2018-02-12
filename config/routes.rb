Rails.application.routes.draw do
  get '/:home_id/members/new', to: 'members#new', as: :new_member
  post '/:home_id/members/new', to: 'members#create', as: :create_member
  # these should probably be at /:home/ later
end
