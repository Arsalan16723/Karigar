class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :phone
      t.string :cnic
      t.string :city
      t.string :address

      t.timestamps null: false
    end
  end
end
