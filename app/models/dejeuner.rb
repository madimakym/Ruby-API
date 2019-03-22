class Dejeuner < ApplicationRecord
    mount_uploader :image, ImageUploader
    
    validates :image, format: {with: /\.(png|jpg|jpeg)\Z/i}
    validates :prix, format: { with: /\A\d+\z/, message: "- Veuiller inserer un nombre valide." }
end
