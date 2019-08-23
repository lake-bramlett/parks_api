require 'rails_helper'

describe "get state parks route", :type => :request do
  let!(:state) { FactoryBot.create(:state)}


  before { get '/states/1/parks'}

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
