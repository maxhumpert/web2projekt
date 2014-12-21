class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :points

      t.timestamps
    end
  end
end
