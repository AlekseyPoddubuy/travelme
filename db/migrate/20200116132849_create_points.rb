class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :title
      t.string :phoneone
      t.string :phonetwo
      t.string :emailone
      t.string :emailtwo
      t.string :name
      t.string :address
      t.string :worktime

      t.timestamps
    end
  end
end
