class AddContactIdToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :contact_id, :integer
  end
end
