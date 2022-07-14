# frozen_string_literal: true

class V1::PingsController < ApplicationController
  include Swagger::Blocks

  swagger_path '/v1/pings' do
    operation :get do
      key :summary, 'Returns a PONG'
      key :description, 'Returns a PONG'
      key :producers, ['application/json']
      response 200 do
        key :description, 'PONG response'
        schema do
          key :type, :object
        end
      end
      key :tags, [
        'pings'
      ]
    end
  end

  def index
    render json: { message: 'PONG' }.to_json, status: :ok
  end
end
