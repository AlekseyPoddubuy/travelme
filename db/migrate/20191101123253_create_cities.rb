class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :title
      t.string :phoneone
      t.string :phonetwo
      t.string :phonethree
      t.string :emailone
      t.string :emailtwo
      t.string :worktime
      t.string :adress
      t.string :name
      t.string :surname
      t.string :facebook
      t.string :instagram
      t.string :slug

      t.timestamps
    end
    add_index :cities, :slug, unique: true
  end
end
