class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :caption
      t.string :image
      t.integer :user_id

      t.timestamps

    end
  end
end
