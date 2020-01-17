class AddMaxLimitToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :max_limit, :integer
  end
end
