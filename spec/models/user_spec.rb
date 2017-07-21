require "rails_helper"

RSpec.describe User, :type => :model do
  describe User do
    it { is_expected.to validate_presence_of(:twitter_account) }
  end

  it 'is valid with valid attributes' do 
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it 'is invalid without twitter account' do
    expect(FactoryGirl.build(:user, twitter_account: "")).to be_invalid
  end

  it 'is invalid with a wrong twitter account' do 
    expect(FactoryGirl.build(:user, twitter_account: "fsjdf")).to be_invalid
  end

  context "custom methods" do
    it '#short_name should return the first name' do 
      user = FactoryGirl.create(:user, name: "Mateo Vidal")
      expect(user.short_name).to eql("Mateo")
    end

    it '#timeline should return max 5 tweets' do 
      user = FactoryGirl.create(:user)
      expect(user.timeline.count).to be <= 5
    end

    it '#timeline should return Twitter::Tweet objs' do 
      user = FactoryGirl.create(:user)
      expect(user.timeline.first).to be_a_kind_of(Twitter::Tweet)
    end

    it '#update_custom_image should update profile image with url given' do
      url = "https://upload.wikimedia.org/wikipedia/commons/a/ae/Castle_Neuschwanstein.jpg"
      user = FactoryGirl.create(:user)
      expect { user.update_custom_image(url) }.to change(user, :profile_image)
    end
  end
end
