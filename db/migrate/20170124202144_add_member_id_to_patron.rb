class AddMemberIdToPatron < ActiveRecord::Migration[5.0]
  def change
    add_column :patrons, :member_id, :integer
  end
end
