require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  describe 'GET index' do
    it 'returns http status success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET show' do
    it 'returns http status success' do
      get :show, params: { id: create(:movie).id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET new' do
    before { sign_in create(:user) }

    it 'returns http status success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create' do
    before { sign_in create(:user) }

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

  describe 'GET edit' do
    before { sign_in create(:user) }

    it 'returns http status success' do
      get :new, params: { id: create(:movie).id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT update' do
    before do
      @movie = create(:movie)
      sign_in create(:user)
    end

    it 'updates existing movie' do
      put :update, params: {
        id: @movie.id,
        movie: { title: 'new title' }
      }
      expect(@movie.reload.title).to eq('new title')
    end
  end
end
