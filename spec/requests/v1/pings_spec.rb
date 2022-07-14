# frozen_string_literal: true

require 'rails_helper'

RSpec.describe('V1::Pings', type: :request) do
  describe 'GET /index' do
    it 'returns a PONG' do
      get v1_pings_url

      expect(response).to have_http_status(:ok)
      expect(response.body).to eq({ message: 'PONG' }.to_json)
    end
  end
end
