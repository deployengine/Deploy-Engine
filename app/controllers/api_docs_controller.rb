# frozen_string_literal: true

class ApiDocsController < ApplicationController
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'
    info do
      key :version, '1.0.0'
      key :title, 'Deploy Engine API'
      key :description, 'Backend API used by the Deploy Engine Front End'
      contact do
        key :name, 'Deploy Engine Team'
      end
      license do
        key :name, 'MIT'
      end
      key :consumes, ['application/json']
      key :produces, ['application/json']
    end
    tag do
      key :name, 'pings'
      key :description, 'Ping operations'
    end
  end

  SWAGGERED_CLASSES = [
    V1::PingsController,
    self
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
