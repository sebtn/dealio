class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|

    	t.string :sale
    	t.text :description	
    	t.string :address

      t.timestamps
    end
  end
end
