class AddMaxLimitToCities < ActiveRecord::Migration[5.1]
  def change
    add_column :cities, :max_limit, :integer
  end
end
