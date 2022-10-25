# frozen_string_literal: true

class API < Grape::API::Instance
  mount ClientPart::Main

  route [:get, :post, :patch, :delete], '*path' do
    error! 'Route not found', 404
  end
end
