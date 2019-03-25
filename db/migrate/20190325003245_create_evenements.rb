class CreateEvenements < ActiveRecord::Migration[5.2]
  def change
    create_table :evenements do |t|
      t.string :libelle
      t.text :description
      t.date :date
      t.time :heure
      t.string :image

      t.timestamps
    end
  end
end
