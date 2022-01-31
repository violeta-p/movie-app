require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'returns http status success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    movie = Movie.create!(title: 'title', description: 'desc',
                      duration: '1h 30mins', release_date: Date.current,
                      cast: 'very cool cast')
    it 'returns http status success' do
      get :show, params: { id: movie.id }
      expect(response).to have_http_status(:success)
    end
  end
end
