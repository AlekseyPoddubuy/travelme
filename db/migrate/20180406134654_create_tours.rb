class CreateTours < ActiveRecord::Migration[5.1]
  def change
    create_table :tours do |t|
      t.string :title
      t.string :body
      t.text :description

      t.timestamps
    end
  end
end
