class User < ApplicationRecord
    mount_uploader :image, ImageUploader

    validates :name, presence: {message: " - Le champ doit être renseigné!"}, on: :create
    validates :image, presence: {message: " - Veuillez renseigner une image!"}, on: :create
end
