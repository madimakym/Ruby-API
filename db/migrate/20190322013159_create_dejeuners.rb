class CreateDejeuners < ActiveRecord::Migration[5.2]
  def change
    create_table :dejeuners do |t|
      t.string :libelle
      t.string :description
      t.string :prix
      t.string :image

      t.timestamps
    end
  end
end
