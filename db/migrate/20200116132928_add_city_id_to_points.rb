class AddCityIdToPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :city_id, :integer
  end
end
