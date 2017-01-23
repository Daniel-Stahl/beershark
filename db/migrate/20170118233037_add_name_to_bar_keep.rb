class AddNameToBarKeep < ActiveRecord::Migration[5.0]
  def change
    add_column :bar_keeps, :company_name, :string
    add_column :bar_keeps, :bio, :text
  end
end
