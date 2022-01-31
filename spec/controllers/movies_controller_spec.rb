require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'returns http status success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
