class AddCategoryIdToWorkers < ActiveRecord::Migration
  def change
  	add_column :workers, :category_id, :integer
  end
end
