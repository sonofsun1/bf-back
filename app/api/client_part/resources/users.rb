# frozen_string_literal: true

module ClientPart
  module Resources
    class Users < Main

      resources :users do
        desc("List of all users")
        get :all do
          users = User.all

          present users, with: ClientPart::Entities::UserEntity
        end

        params do
          requires :id, type: Integer, desc: 'User ID'
        end
        route_param :id do
          desc("Get user by ID")
          get do
            user = User.find(params[:id])

            present user, with: ClientPart::Entities::UserEntity
          end

          desc("Delete user by ID")
          delete do
            user = User.find(params[:id])
            user.destroy
          end
        end

        desc('Create new user')
        params do
          requires :email, type: String, desc: 'User email'
          requires :first_name, type: String, desc: 'User first name'
          requires :last_name, type: String, desc: 'User last name'
        end
        post do
          User.create!({
            email: params[:email],
            first_name: params[:first_name],
            last_name: params[:last_name],
          })
        end

        desc('Patch user by ID')
        params do
          requires :id, type: Integer, desc: 'User ID'
          optional :email, type: String, desc: 'User new email'
          optional :first_name, type: String, desc: 'User new first name'
          optional :last_name, type: String, desc: 'User new last name'
          at_least_one_of :email, :first_name, :last_name
        end
        route_param :id do
          patch do
            user = User.find(params[:id])

            user.update(params)
          end
        end
      end
    end
  end
end
