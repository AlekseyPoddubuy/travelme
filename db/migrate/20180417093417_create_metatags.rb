class CreateMetatags < ActiveRecord::Migration[5.1]
  def change
    create_table :metatags do |t|
      t.string :title
      t.string :keywords
      t.text :description
      t.string :page

      t.timestamps
    end
  end
end
