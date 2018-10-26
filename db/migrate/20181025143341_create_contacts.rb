class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :title
      t.integer :phoneone
      t.integer :phonetwo
      t.string :email
      t.string :adress

      t.timestamps
    end
  end
end
