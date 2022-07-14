# frozen_string_literal: true

class V1::PingsController < ApplicationController
  def index
    render json: { message: 'PONG' }.to_json
  end
end
