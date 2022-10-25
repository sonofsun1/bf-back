# frozen_string_literal: true

module ClientPart
  module Entities
    class MainEntity < Grape::Entity
      format_with(:iso_timestamp) do |date|
        date.iso8601
      end

      with_options(format_with: :iso_timestamp) do
        expose :created_at, as: :createdAt
        expose :updated_at, as: :updatedAt
      end
    end
  end
end
