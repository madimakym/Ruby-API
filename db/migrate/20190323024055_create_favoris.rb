class CreateFavoris < ActiveRecord::Migration[5.2]
  def change
    create_table :favoris do |t|
      t.integer :users_id
      t.integer :dejeuners_id
    end
  end
end
