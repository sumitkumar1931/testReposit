class CreateSumits < ActiveRecord::Migration
  def change
    create_table :sumits do |t|
      t.string :name
      t.text :content
      t.date :published_on
      t.string :tags

      t.timestamps
    end
  end
end
