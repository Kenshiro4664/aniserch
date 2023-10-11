class Anime < ApplicationRecord
    mount_uploader :image, ImageUploader
end
