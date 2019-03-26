class CreateDejeuners < ActiveRecord::Migration[5.2]
  def change
    create_table :dejeuners do |t|
      t.string :libelle
      t.text :description
      t.string :prix
      t.string :image

      t.timestamps
    end
  end
end
