class User < ActiveRecord::Base  

    # validates :name, presence: {message: "Le champ doit être renseigné."}, on: :create
    # validates :address, uniqueness: {message: "Le champ doit être renseigné"}, on: :create
    # validates :phone, uniqueness: {message: "Le champ doit être renseigné."}, on: :create
    # has_one_attached :image

end
