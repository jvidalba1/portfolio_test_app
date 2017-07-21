class ProfileUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  # Storage to use for this uploader:
  storage :file

  # Process files as they are uploaded:
  # process scale: [200, 300] [width, height]
  process resize_to_fit: [800, 800]

  version :profile do 
    process resize_to_fill: [300,300]
  end

  version :thumb, from_version: :profile do
    process resize_to_fill: [200,200]
  end

  version :small_thumb, from_version: :thumb do
    process resize_to_fill: [30, 30]
  end

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # White list of image extensions which are allowed to be uploaded.
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
end
