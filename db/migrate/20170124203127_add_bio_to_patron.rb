class AddBioToPatron < ActiveRecord::Migration[5.0]
  def change
    add_column :patrons, :bio, :text
  end
end
