require 'rails_helper'

RSpec.describe Api::V1::MessagesController, type: :controller do
  let!(:message) { Message.create!(greeting: 'Hello, World!') }

  describe 'GET #greeting' do
    before do
      get :greeting
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns a message in the response body' do
      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq(message.greeting)
    end
  end
end
