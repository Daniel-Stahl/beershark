class AddNameToBeer < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :name, :string
  end
end
