class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :user_id
      t.string :resort_id

      t.timestamps

    end
  end
end
