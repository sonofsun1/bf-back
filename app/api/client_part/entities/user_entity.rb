# frozen_string_literal: true

module ClientPart
  module Entities
    class UserEntity < Entities::MainEntity
      expose :id
      expose :email
      expose :first_name, as: :firstName
      expose :last_name, as: :lastName
    end
  end
end
