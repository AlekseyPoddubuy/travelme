class AddPriorityToTours < ActiveRecord::Migration[5.1]
  def change
    add_column :tours, :priority, :integer
  end
end
