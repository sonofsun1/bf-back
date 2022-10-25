# frozen_string_literal: true

GrapeSwaggerRails.options.url = "/client/swagger_doc"
GrapeSwaggerRails.options.urls = Hash[{
  'Client part' => '/client/swagger_doc',
}.sort]
GrapeSwaggerRails.options.app_name = 'BF Back'
GrapeSwaggerRails.options.api_key_type = 'header'
GrapeSwaggerRails.options.api_key_name = "AuthToken"
