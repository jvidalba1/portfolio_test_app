require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET show" do 
    before do 
      @user = FactoryGirl.create(:user)
    end
    it 'should be success' do 
      get :show, params: { id: @user.id }
      expect(response.status).to eq(200)
    end

    it 'should return a json' do 
      get :show, params: { id: @user.id, format: :json }
      expect(response.content_type).to eq("application/json")
    end
  end
end
