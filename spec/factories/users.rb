FactoryGirl.define do
  factory :user do
    name              { Faker::Name.name }
    description       { Faker::Name.name }
    twitter_account   { "jvidalba" }
    profile_image     { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'logo_image.jpg'), 'image/jpg') }
  end
end
