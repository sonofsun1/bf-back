# frozen_string_literal: true

module ClientPart
  class Main < Grape::API
    helpers ClientPart::Helpers::MainHelper

    prefix "client"

    version 'v1', using: :accept_version_header

    content_type :json, "application/json"
    default_format :json

    before do
      next if request.path =~ /swagger_doc/
    end

    mount Resources::Users

    add_swagger_documentation api_version: 'v1',
                              hide_documentation_path: true,
                              base_path: '/',
                              info: { title: 'Client API' },
                              array_use_braces: true
  end
end
