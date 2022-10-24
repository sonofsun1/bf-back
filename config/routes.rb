Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/api-doc', as: 'api_doc'
end
