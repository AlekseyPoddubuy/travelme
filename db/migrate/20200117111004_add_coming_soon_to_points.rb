class AddComingSoonToPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :coming_soon, :boolean, default: :true
  end
end
