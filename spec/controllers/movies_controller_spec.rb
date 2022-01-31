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

  describe 'GET new' do
    before { sign_in User.create!(email: 'user@test.com', password: 'password', password_confirmation: 'password') }

    it 'returns http status success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create' do
    before { sign_in User.create!(email: 'user@test.com', password: 'password', password_confirmation: 'password') }

    it 'creates new movie' do
      expect do
        post :create, params: {
          movie: {
            title: 'title',
            description: 'desc',
            duration: '1h 30mins',
            release_date: Date.current,
            cast: 'very cool cast'
          }
        }
      end.to change(Movie, :count).by(1)
    end
  end
end
