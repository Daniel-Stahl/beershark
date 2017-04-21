class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
    	t.references :bar_keep, foreign_key: true
      	t.timestamps
    end
  end
end
