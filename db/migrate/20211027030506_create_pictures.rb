class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :latitude
      t.string :longitude
      t.string :memo
      t.string :title

      t.timestamps
    end
  end
end
