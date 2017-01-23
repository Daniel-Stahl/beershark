class AddNameToBar < ActiveRecord::Migration[5.0]
  def change
    add_column :bars, :name, :string
  end
end
